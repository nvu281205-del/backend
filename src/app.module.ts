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
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import * as fs from 'fs';

@Module({
  imports: [
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'uploads'),
      serveRoot: '/uploads',
    }),
    ConfigModule.forRoot({ isGlobal: true, envFilePath: '.env' }),
    UsersModule,
    EventModule,
    DetailModule,
    OrganizerModule,
    OrderModule,
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.DB_HOST,
      port: parseInt(process.env.DB_PORT, 10),
      username: process.env.DB_USER,
      password: process.env.DB_PASS,
      database: process.env.DB_NAME,
      entities: [Events, TicketDetail, Organizer, Users, Order, OrderTicket],
      ssl:
        process.env.DB_SSL === 'true'
          ? {
              rejectUnauthorized: false,
              ca: process.env.DB_CA_PATH
                ? fs.readFileSync(process.env.DB_CA_PATH)
                : undefined,
              cert: process.env.DB_CERT_PATH
                ? fs.readFileSync(process.env.DB_CERT_PATH)
                : undefined,
              key: process.env.DB_KEY_PATH
                ? fs.readFileSync(process.env.DB_KEY_PATH)
                : undefined,
            }
          : false,
      synchronize: true,
      autoLoadEntities: true,
    }),
    UsersModule,
    AuthModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
