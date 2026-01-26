import { Module } from '@nestjs/common';
import { OrderService } from './order.service';
import { OrderController } from './order.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Order } from 'src/entity/order.entity';
import { OrderTicket } from 'src/entity/ordertickets.entity';
import { TicketDetail } from 'src/entity/detail.entity';
import { Users } from 'src/entity/users.entity';
import { Events } from 'src/entity/events.entity';

@Module({
  providers: [OrderService],
  controllers: [OrderController],
  imports: [
    TypeOrmModule.forFeature([Order, OrderTicket, TicketDetail, Users, Events]),
  ],
})
export class OrderModule {}
