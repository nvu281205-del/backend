import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { CreateOrderDto } from 'src/dto/createorder-dto';
import { TicketDetail } from 'src/entity/detail.entity';
import { Events } from 'src/entity/events.entity';
import { Order } from 'src/entity/order.entity';
import { OrderTicket } from 'src/entity/ordertickets.entity';
import { Users } from 'src/entity/users.entity';
import { Repository } from 'typeorm';

@Injectable()
export class OrderService {
  constructor(
    @InjectRepository(Order)
    private readonly repoOrder: Repository<Order>,
    @InjectRepository(TicketDetail)
    private readonly repoTicket: Repository<TicketDetail>,
    @InjectRepository(OrderTicket)
    private readonly repoOrderTicket: Repository<OrderTicket>,
    @InjectRepository(Users)
    private readonly repoUser: Repository<Users>,
    @InjectRepository(Events)
    private readonly repoEvent: Repository<Events>,
  ) {}
  async createOrder(dto: CreateOrderDto, userId: number): Promise<Order> {
    const user = await this.repoUser.findOne({ where: { id: userId } });
    const event = await this.repoEvent.findOne({ where: { id: dto.eventId } });
    const order = this.repoOrder.create({
      user,
      event,
      totalPrice: dto.totalPrice,
      payment_method: dto.payment_method,
    });
    await this.repoOrder.save(order);

    for (const t of dto.tickets) {
      const ticket = await this.repoTicket.findOne({
        where: { id: t.ticketId },
      });
      console.log(ticket);
      if (!ticket) {
        throw new Error(`Ticket ${t.ticketId} not found`);
      }
      if (ticket.stock < t.count) {
        throw new Error(`Not enough stock for ticket ${ticket.id}`);
      }
      if (t.count > 0) {
        ticket.stock -= t.count;
        await this.repoTicket.save(ticket);
      }

      const orderticket = this.repoOrderTicket.create({
        order: order,
        ticket: ticket,
        count: t.count,
        price: ticket.price,
      });
      await this.repoOrderTicket.save(orderticket);
    }
    return this.repoOrder.findOne({
      where: { id: order.id },
      relations: ['ordertickets', 'ordertickets.ticket'],
    });
  }
  async getAllOrder() {
    const orders = await this.repoOrder.find({
      relations: ['user', 'event', 'ordertickets', 'ordertickets.ticket'],
    });
    return orders.map((order) => ({
      orderId: order.id,
      username: order.user.username,
      eventId: order.event.id,
      tickets: order.ordertickets.map((ot) => ({
        ticketId: ot.ticket.id,
        ticketType: ot.ticket.type,
        price: ot.price,
        count: ot.count,
      })),
      totalPrice: order.totalPrice,
      paymentMethod: order.payment_method,
    }));
  }
}
