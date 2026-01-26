import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Organizer } from 'src/entity/organizer.entity';
import { Repository } from 'typeorm';

@Injectable()
export class OrganizerService {
  constructor(
    @InjectRepository(Organizer)
    private readonly repo: Repository<Organizer>,
  ) {}
  getall(): Promise<Organizer[]> {
    return this.repo.find();
  }
  getbyid(id: number) {
    return this.repo.findOneBy({ id });
  }
  async create(body: Partial<Organizer>[]): Promise<Organizer[]> {
    const organ = this.repo.create(body);
    return this.repo.save(organ);
  }
  async update(
    id: number,
    body: Partial<Organizer>,
  ): Promise<Organizer | null> {
    await this.repo.update(id, body);
    return this.repo.findOneBy({ id });
  }
  async delete(id: number) {
    const data = this.repo.findOneBy({ id });
    await this.repo.delete({ id });
    return data;
  }
}
