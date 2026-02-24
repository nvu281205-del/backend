/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable prettier/prettier */
/* eslint-disable @typescript-eslint/no-unsafe-argument */
/* eslint-disable @typescript-eslint/no-floating-promises */
import { Injectable } from '@nestjs/common';
import { UsersService } from '../users/users.service';
import { JwtService } from '@nestjs/jwt';
import { Users } from 'src/entity/users.entity';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private readonly jwtService: JwtService,
      private readonly configService: ConfigService,
  ) { }
  generateToken(user:Users){
     const payload = { email: user.email, sub: user.id };
    const refresh_token = this.jwtService.sign(payload, {
    expiresIn: this.configService.get<string>('REFRESH_TOKEN_EXPIRES') as any,
    });
    this.usersService.updateRefreshToken(user.id, refresh_token);
    return {
      access_token: this.jwtService.sign(payload),
      refresh_token: refresh_token,
    };
  }
  login(user: Users) {
    const payload = { email: user.email, sub: user.id };
    const refresh_token = this.jwtService.sign(payload, {
      expiresIn: this.configService.get<string>('REFRESH_TOKEN_EXPIRES') as any,
    });
    this.usersService.updateRefreshToken(user.id, refresh_token);
    return {
      access_token: this.jwtService.sign(payload),
      refresh_token: refresh_token,
      role:user.role
    };
  }
  async verifyRefreshToken(refreshToken: string) {
    const decode = this.jwtService.verify(refreshToken);
    if (decode) {
      // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
      const user = await this.usersService.verifyRefreshToken(decode.sub, refreshToken);
      if (user) {
        return user;
      }
    }
    return null;
  }
}
