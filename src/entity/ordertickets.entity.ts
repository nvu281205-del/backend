import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Order } from './order.entity';
import { TicketDetail } from './detail.entity';
@Entity('orderticket')
export class OrderTicket {
  @PrimaryGeneratedColumn()
  orderticketid: number;
  @Column()
  count: number;
  @ManyToOne(() => Order, (order) => order.ordertickets, { nullable: true })
  @JoinColumn({ name: 'orderId' })
  order: Order;
  @ManyToOne(() => TicketDetail, (ticket) => ticket.ordertickets)
  @JoinColumn({ name: 'ticketId' })
  ticket: TicketDetail;
  @Column('decimal')
  price: number;
}
