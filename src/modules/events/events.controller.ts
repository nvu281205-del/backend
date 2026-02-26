import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
  Query,
} from '@nestjs/common';
import { EventsService } from './events.service';
import { CreateEventDto } from 'src/dto/createevent-dto';
import { UpdateEventDTO } from 'src/dto/updateevent-dto';
import { Events } from '../../entity/events.entity';

@Controller('events')
export class EventController {
  constructor(private readonly eventsSerVice: EventsService) {}
  @Get()
  getEvents(
    @Query('category') category: string,
    @Query('title') title: string,
    @Query('city') city: string,
  ) {
    return this.eventsSerVice.findbyfilter(category, city, title);
  }
  @Get('special')
  getSpecialEvents() {
    return this.eventsSerVice.getSpecialEvents();
  }
  @Get('week') async getWeekEvents() {
    return this.eventsSerVice.getEventsThisWeek();
  }
  @Get('month') async getMonthEvents() {
    return this.eventsSerVice.getEventsThisMonth();
  }
  @Get('/:id')
  getOne(@Param('id') id: string) {
    return this.eventsSerVice.getOne(+id);
  }
  @Post()
  createEvent(@Body() body: CreateEventDto[]): Promise<Events[]> {
    return this.eventsSerVice.createEvent(body);
  }
  @Patch('/:id')
  Insert(@Param('id') id: string, @Body() body: UpdateEventDTO) {
    return this.eventsSerVice.updateEvent(+id, body);
  }

  @Delete('/:id')
  Delete(@Param('id') id: string) {
    return this.eventsSerVice.delete(+id);
  }
}
