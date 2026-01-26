import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TicketDetail } from 'src/entity/detail.entity';
import { DetailService } from './Detail.service';
import { DetailController } from './Detail.controller';

@Module({
  imports: [TypeOrmModule.forFeature([TicketDetail])],
  providers: [DetailService],
  controllers: [DetailController],
})
export class DetailModule {}
