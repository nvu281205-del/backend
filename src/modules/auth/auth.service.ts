/* eslint-disable prettier/prettier */
/* eslint-disable @typescript-eslint/no-unsafe-argument */
/* eslint-disable @typescript-eslint/no-floating-promises */
import { Injectable } from '@nestjs/common';
import { UsersService } from '../users/users.service';
import { JwtService } from '@nestjs/jwt';
import { Users } from 'src/entity/users.entity';

@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private readonly jwtService: JwtService,
  ) {}
  login(user: Users) {
    const payload = { username: user.username, sub: user.id };
    const refresh_token = this.jwtService.sign(payload, {
      expiresIn: '7d',
    });
    this.usersService.updateRefreshToken(user.id, refresh_token);
    return {
      access_token: this.jwtService.sign(payload),
      refresh_token: refresh_token,
    };
  }
  async verifyRefreshToken(refreshToken: string) {
    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const decode = this.jwtService.decode(refreshToken);
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
