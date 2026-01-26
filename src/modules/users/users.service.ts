/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-call */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Users } from 'src/entity/users.entity';
import { Repository } from 'typeorm';
import * as bcrypt from 'bcrypt';
import { CreateUserDto } from 'src/dto/createuser-dto';
@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(Users)
    private usersRepository: Repository<Users>,
  ) {}
  async createUser(userData: CreateUserDto) {
    const hashPassword = await bcrypt.hash(userData.password, 10);
    const user = this.usersRepository.create(userData);

    user.password = hashPassword;

    return this.usersRepository.save(user);
  }
  findByUserName(username: string) {
    const user = this.usersRepository.findOneBy({ username });
    return user;
  }
  async validateUser(username: string, password: string) {
    const user = await this.usersRepository.findOneBy({ username });
    if (!user) {
      throw new BadRequestException('Email chưa đăng ký');
    }
    const status = await bcrypt.compare(password, user.password);
    if (status) {
      return user;
    }
    throw new BadRequestException('Thông tin đăng nhập không chính xác');
  }
  async updateRefreshToken(userId: number, refreshToken: string) {
    const hashToken = await bcrypt.hash(refreshToken, 10);
    return this.usersRepository.update(userId, { refreshToken: hashToken });
  }
  async verifyRefreshToken(userId: number, refreshToken: string) {
    const user = await this.usersRepository.findOneBy({ id: userId });
    if (!user) {
      return false;
    }
    const status = await bcrypt.compare(refreshToken, user.refreshToken);
    if (status) {
      return user;
    }
    return false;
  }
}
