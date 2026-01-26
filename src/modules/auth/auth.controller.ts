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

@Controller('auth')
export class AuthController {
  constructor(
    private readonly authService: AuthService,
    private readonly userService: UsersService,
  ) {}
  @Post('register')
  async register(@Body() userData: CreateUserDto) {
    const exitingUser = await this.userService.findByUserName(
      userData.username,
    );
    if (exitingUser) {
      throw new BadRequestException(
        'Email đã tồn tại.Vui lòng nhập email khác',
      );
    }
    const user = await this.userService.createUser(userData);
    return { message: 'Đăng ký thành công', user };
  }
  @UseGuards(LocalAuthGuard)
  @Post('login')
  login(@Request() req: { user: Users }) {
    return this.authService.login(req.user);
  }
  @Post('validate')
  validate(@Body() datalogin: CreateUserDto) {
    const { username, password } = datalogin;
    return this.userService.validateUser(username, password);
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
    return this.authService.login(user);
  }
}
