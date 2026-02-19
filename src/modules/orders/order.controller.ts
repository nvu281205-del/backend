import { Body, Controller, Get, Post, Req, UseGuards } from '@nestjs/common';
import { OrderService } from './order.service';

import { Order } from 'src/entity/order.entity';
import { CreateOrderDto } from 'src/dto/createorder-dto';
import { JwtAuthGuard } from 'src/guards/jwt-guard';
import { JwtPayload } from '../auth/jwt-payload.interface';

@Controller('orders')
export class OrderController {
  constructor(private readonly orderservice: OrderService) {}

  @UseGuards(JwtAuthGuard)
  @Post()
  async createOrder(
    @Body() dto: CreateOrderDto,
    @Req() req: { user: JwtPayload },
  ): Promise<Order> {
    const userId = req.user.sub;
    return this.orderservice.createOrder(dto, userId);
  }
  @Get()
  Getall() {
    return this.orderservice.getAllOrder();
  }
}
