import { Expose } from 'class-transformer';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  OneToMany,
  OneToOne,
} from 'typeorm';
import { TicketDetail } from './detail.entity';
import { Organizer } from './organizer.entity';
import { Order } from './order.entity';

@Entity('events')
export class Events {
  @Expose()
  @PrimaryGeneratedColumn()
  id: number;
  @Expose()
  @Column()
  category: string;
  @Expose()
  @Column()
  imgSrc: string;
  @Expose()
  @Column({ nullable: true })
  video: string;
  @Expose()
  @Column({ nullable: true })
  city: string;
  @Expose()
  @Column('decimal', { precision: 10, scale: 0 })
  baseprice: number;
  @Expose()
  @Column()
  title: string;
  @Expose()
  @Column()
  locate: string;
  @Expose()
  @Column({ nullable: true })
  locatedetail: string;
  @Expose()
  @Column({ type: 'date' })
  date: Date;
  @Expose()
  @Column()
  timeRange: string;
  @Expose()
  @OneToMany(() => TicketDetail, (ticket) => ticket.event)
  tickets: TicketDetail[];
  @Expose()
  @OneToOne(() => Organizer, (organizer) => organizer.event)
  organizer: Organizer;
  @Expose()
  get isPast(): boolean {
    return new Date(this.date) < new Date();
  }
  @Expose()
  @Column({ default: false })
  special: boolean; // sự kiện đặc biệt
  @OneToMany(() => Order, (order) => order.event)
  orders: Order[];
}
