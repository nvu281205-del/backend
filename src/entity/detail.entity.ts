import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Events } from './events.entity';
import { OrderTicket } from './ordertickets.entity';
@Entity('detail')
export class TicketDetail {
  @PrimaryGeneratedColumn()
  id: number;
  @Column()
  type: string;
  @Column()
  price: number;
  @Column()
  stock: number;
  @ManyToOne(() => Events, (event) => event.tickets)
  event: Events;
  @OneToMany(() => OrderTicket, (orderticket) => orderticket.ticket)
  ordertickets: OrderTicket[];
}
