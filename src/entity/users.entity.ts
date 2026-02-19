import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Order } from './order.entity';
@Entity('users')
export class Users {
  @PrimaryGeneratedColumn()
  id: number;
  @Column({ nullable: true })
  username: string;
  @Column({ nullable: true })
  gender: string;
  @Column({ nullable: true })
  phonenumber: string;
  @Column({ nullable: true, type: 'varchar' })
  datebirth: string;
  @Column({ unique: true })
  email: string;
  @Column()
  password: string;
  @Column({ nullable: true })
  avatarUrl: string;
  @Column({ nullable: true })
  refreshToken: string;
  @Column()
  role: string;
  @OneToMany(() => Order, (order) => order.user)
  orders: Order[];
}
