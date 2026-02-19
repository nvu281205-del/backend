import {
  BadRequestException,
  Body,
  Controller,
  Get,
  Post,
  Request,
  UseGuards,
} from '@nestjs/common';
import { AuthService } from './auth.service';
import { UsersService } from '../users/users.service';
import { CreateUserDto } from 'src/dto/createuser-dto';
import { Users } from 'src/entity/users.entity';
import { LocalAuthGuard } from 'src/guards/local-guard';
import { JwtAuthGuard } from 'src/guards/jwt-guard';
import { JwtService } from '@nestjs/jwt';
@Controller('auth')
export class AuthController {
  constructor(
    private readonly authService: AuthService,
    private readonly userService: UsersService,
    private readonly jwtService: JwtService,
  ) {}
  @Post('register')
  async register(@Body() userData: CreateUserDto) {
    const exitingUser = await this.userService.findByEmail(userData.email);
    if (exitingUser) {
      throw new BadRequestException(
        'Email đã tồn tại. Vui lòng nhập email khác',
      );
    }

    const user = await this.userService.createUser(userData);
    const token = this.authService.generateToken(user);

    return {
      message: 'Đăng ký thành công',
      user,
      token,
    };
  }

  @UseGuards(LocalAuthGuard)
  @Post('login')
  login(@Request() req: { user: Users }) {
    return this.authService.login(req.user);
  }
  @Post('validate')
  validate(@Body() datalogin: CreateUserDto) {
    const { email, password } = datalogin;
    return this.userService.validateUser(email, password);
  }
  @UseGuards(JwtAuthGuard)
  @Get('profile')
  profile(@Request() req: { user: Users }) {
    return req.user;
  }
  @Post('refresh')
  async refreshToken(@Body() { refreshToken }: { refreshToken: string }) {
    if (!refreshToken) {
      throw new Error('Refresh token is required');
    }
    const user = await this.authService.verifyRefreshToken(refreshToken);
    if (!user) {
      throw new Error('Invalid refresh token');
    }
    const payload = { email: user.email, sub: user.id };
    return {
      access_token: this.jwtService.sign(payload),
      refresh_token: refreshToken,
    };
  }
}
