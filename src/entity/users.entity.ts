import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Order } from './order.entity';
@Entity('users')
export class Users {
  @PrimaryGeneratedColumn()
  id: number;
  @Column({ unique: true })
  username: string;
  @Column()
  password: string;
  @Column({ nullable: true })
  refreshToken: string;
  @OneToMany(() => Order, (order) => order.user)
  orders: Order[];
}
