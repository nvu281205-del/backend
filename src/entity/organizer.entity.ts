import {
  Column,
  Entity,
  JoinColumn,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Events } from './events.entity';
@Entity('organizer')
export class Organizer {
  @PrimaryGeneratedColumn()
  id: number;
  @Column()
  logoUrl: string;
  @Column()
  name: string;
  @Column({ type: 'text', nullable: true })
  description: string;
  @OneToOne(() => Events, (event) => event.organizer)
  @JoinColumn()
  event: Events;
}
