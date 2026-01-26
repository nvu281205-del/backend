import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Users } from './users.entity';
import { Events } from './events.entity';
import { OrderTicket } from './ordertickets.entity';

@Entity('orders')
export class Order {
  @PrimaryGeneratedColumn()
  id: number;
  @ManyToOne(() => Users, (user) => user.orders)
  @JoinColumn({ name: 'userId' })
  user: Users;
  @ManyToOne(() => Events, (event) => event.orders)
  @JoinColumn({ name: 'eventId' })
  event: Events;
  @OneToMany(() => OrderTicket, (orderticket) => orderticket.order)
  ordertickets: OrderTicket[];
  @Column('decimal', { precision: 10 })
  totalPrice: number;
  @Column()
  payment_method: string;
  @CreateDateColumn({ type: 'timestamp' })
  created_at: Date;
}
