import {
  Body,
  Controller,
  Get,
  Post,
  Req,
  UploadedFile,
  UseGuards,
  UseInterceptors,
} from '@nestjs/common';
import { UsersService } from './users.service';
import { Users } from 'src/entity/users.entity';
import { JwtAuthGuard } from 'src/guards/jwt-guard';
import { FileInterceptor } from '@nestjs/platform-express';
import { JwtPayload } from '../auth/jwt-payload.interface';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}
  @UseGuards(JwtAuthGuard)
  @Get()
  getuser(@Req() req: { user: JwtPayload }) {
    const userid = req.user.sub;
    return this.usersService.getuser(userid);
  }
  @UseGuards(JwtAuthGuard)
  @Get('/order')
  getUserOrder(@Req() req: { user: JwtPayload }) {
    const userId = req.user.sub;
    return this.usersService.getorder(userId);
  }

  @Post('/info')
  @UseGuards(JwtAuthGuard)
  @UseInterceptors(FileInterceptor('avatar'))
  async uploadAvatar(
    @UploadedFile() file: Express.Multer.File,
    @Req() req: { user: JwtPayload },
    @Body() userdata: Partial<Users>,
  ) {
    const userId = req.user.sub;
    let avatarUrl: string;
    if (file) {
      avatarUrl = `uploads/avatars/${file.filename}`;
    }
    return this.usersService.updateAvatar(userId, avatarUrl, userdata);
  }
}
