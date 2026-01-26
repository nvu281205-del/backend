import { Body, Controller, Post, Req, UseGuards } from '@nestjs/common';
import { OrderService } from './order.service';

import { Order } from 'src/entity/order.entity';
import { CreateOrderDto } from 'src/dto/createorder-dto';
import { Users } from 'src/entity/users.entity';
import { JwtAuthGuard } from 'src/guards/jwt-guard';

@Controller('orders')
export class OrderController {
  constructor(private readonly orderservice: OrderService) {}
  @UseGuards(JwtAuthGuard)
  @Post()
  async createOrder(
    @Body() dto: CreateOrderDto,
    @Req() req: { user: Users },
  ): Promise<Order> {
    const userId = req.user.id;
    return this.orderservice.createOrder(dto, userId);
  }
}
