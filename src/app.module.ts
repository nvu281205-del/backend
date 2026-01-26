import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EventModule } from './modules/events/events.module';
import { Events } from './entity/events.entity';
import { TicketDetail } from './entity/detail.entity';
import { DetailModule } from './modules/Detail/Detail.module';
import { OrganizerModule } from './modules/organizer/organizer.module';
import { Organizer } from './entity/organizer.entity';
import { UsersModule } from './modules/users/users.module';
import { Users } from './entity/users.entity';
import { AuthModule } from './modules/auth/auth.module';
import { ConfigModule } from '@nestjs/config';
import { Order } from './entity/order.entity';
import { OrderModule } from './modules/orders/order.module';
import { OrderTicket } from './entity/ordertickets.entity';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true, envFilePath: '.env' }),
    UsersModule,
    EventModule,
    DetailModule,
    OrganizerModule,
    OrderModule,
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: '123',
      database: 'nestdb',
      entities: [Events, TicketDetail, Organizer, Users, Order, OrderTicket],
      synchronize: true,
    }),
    UsersModule,
    AuthModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
