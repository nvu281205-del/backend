import { Injectable } from '@nestjs/common';
import { Events } from '../../entity/events.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Between, Repository } from 'typeorm';
import { instanceToPlain, plainToInstance } from 'class-transformer';

@Injectable()
export class EventsService {
  constructor(
    @InjectRepository(Events)
    private readonly EventRepo: Repository<Events>,
  ) {}

  async getAll() {
    const events = await this.EventRepo.find();
    const transformed = plainToInstance(Events, events, {
      excludeExtraneousValues: true,
    });
    return instanceToPlain(transformed);
  }
  async findbyfilter(category: string, city: string, title: string) {
    const query = this.EventRepo.createQueryBuilder('event');
    if (category) {
      query.andWhere('event.category=:category', { category });
    }
    if (city) {
      query.andWhere('event.city=:city', { city });
    }
    if (title) {
      query.andWhere('event.title LIKE:title', { title: `%${title}%` });
    }
    const events = await query.getMany();
    const transformed = plainToInstance(Events, events, {
      excludeExtraneousValues: true,
    });
    return instanceToPlain(transformed);
  }
  async searchByTitle(title: string) {
    const events = await this.EventRepo.createQueryBuilder('events')
      .where('events.title LIKE :title', { title: `%${title}%` })
      .getMany();
    const transformed = plainToInstance(Events, events, {
      excludeExtraneousValues: true,
    });
    return instanceToPlain(transformed);
  }
  async getOne(id: number): Promise<Events | null> {
    return this.EventRepo.findOne({
      where: { id },
      relations: ['tickets', 'organizer'],
    });
  }
  async getSpecialEvents() {
    return this.EventRepo.find({
      where: { special: true },
    });
  }

  createEvent(EventData: Partial<Events>[]): Promise<Events[]> {
    const events = this.EventRepo.create(EventData);
    return this.EventRepo.save(events);
  }

  async updateEvent(
    id: number,
    EventData: Partial<Events>,
  ): Promise<Events | null> {
    await this.EventRepo.update(id, EventData);
    return this.EventRepo.findOneBy({ id });
  }
  async getEventsThisWeek() {
    const now = new Date();
    const startOfWeek = new Date(now);
    startOfWeek.setDate(now.getDate() - now.getDay());
    const endOfWeek = new Date(startOfWeek);
    endOfWeek.setDate(startOfWeek.getDate() + 7);

    return this.EventRepo.find({
      where: {
        date: Between(startOfWeek, endOfWeek),
      },
    });
  }
  async getEventsThisMonth() {
    const now = new Date();
    const startOfMonth = new Date(now.getFullYear(), now.getMonth(), 1);
    const endOfMonth = new Date(now.getFullYear(), now.getMonth() + 1, 0);

    return this.EventRepo.find({
      where: {
        date: Between(startOfMonth, endOfMonth),
      },
    });
  }

  delete(id: number) {
    return this.EventRepo.delete({ id });
  }
}
