/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-call */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { BadRequestException, Injectable, UseGuards } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Users } from 'src/entity/users.entity';
import { Repository } from 'typeorm';
import * as bcrypt from 'bcrypt';
import { CreateUserDto } from 'src/dto/createuser-dto';
import { JwtAuthGuard } from 'src/guards/jwt-guard';
@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(Users)
    private usersRepository: Repository<Users>,
  ) {}
  async createUser(userData: CreateUserDto) {
    const hashPassword = await bcrypt.hash(userData.password, 10);
    const user = this.usersRepository.create({ ...userData, role: 'customer' });

    user.password = hashPassword;

    return this.usersRepository.save(user);
  }
  findByEmail(email: string) {
    const user = this.usersRepository.findOneBy({ email });
    return user;
  }
  async validateUser(email: string, password: string) {
    const user = await this.usersRepository.findOneBy({ email });
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
  getuser(userid: number) {
    return this.usersRepository.findOne({ where: { id: userid } });
  }
  @UseGuards(JwtAuthGuard)
  async getorder(userId) {
    const users = await this.usersRepository.findOne({
      where: { id: userId },
      relations: ['orders', 'orders.event'],
    });
    return users?.orders.map((order) => order.event) ?? [];
  }
  async updateAvatar(
    userId: number,
    avatarUrl: string,
    userdata: Partial<Users>,
  ) {
    const user = await this.usersRepository.findOne({ where: { id: userId } });
    if (!user) throw new Error('User not found');
    if (avatarUrl) {
      user.avatarUrl = avatarUrl;
    }
    Object.assign(user, userdata);
    return this.usersRepository.save(user);
  }
}
