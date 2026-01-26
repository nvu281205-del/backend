import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { TicketDetail } from 'src/entity/detail.entity';
import { Repository } from 'typeorm';

@Injectable()
export class DetailService {
  constructor(
    @InjectRepository(TicketDetail)
    private detailRepo: Repository<TicketDetail>,
  ) {}

  async create(dto: Partial<TicketDetail>[]): Promise<TicketDetail[]> {
    const detail = this.detailRepo.create(dto);
    return this.detailRepo.save(detail);
  }

  async findAll(): Promise<TicketDetail[]> {
    return this.detailRepo.find();
  }

  async findOne(id: number) {
    return this.detailRepo.findOneBy({ id });
  }

  async update(
    id: number,
    dto: Partial<TicketDetail>,
  ): Promise<TicketDetail | null> {
    await this.detailRepo.update(id, dto);
    return this.findOne(id);
  }

  async remove(id: number) {
    await this.detailRepo.delete(id);
  }
}
