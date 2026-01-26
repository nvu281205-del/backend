import { Module } from '@nestjs/common';
import { EventsService } from './events.service';
import { EventController } from './events.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Events } from '../../entity/events.entity';
import { Organizer } from 'src/entity/organizer.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Events, Organizer])],
  providers: [EventsService],
  controllers: [EventController],
})
export class EventModule {}
