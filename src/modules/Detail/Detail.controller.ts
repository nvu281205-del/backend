import {
  Controller,
  Get,
  Post,
  Put,
  Delete,
  Param,
  Body,
} from '@nestjs/common';

import { CreateDetailDto } from 'src/dto/createdetail-dto';
import { DetailService } from './Detail.service';
import { UpdateDetailDto } from 'src/dto/updatedetail-dto';
import { TicketDetail } from 'src/entity/detail.entity';

@Controller('details')
export class DetailController {
  constructor(private readonly detailService: DetailService) {}

  @Post()
  create(@Body() dto: CreateDetailDto[]): Promise<TicketDetail[]> {
    return this.detailService.create(dto);
  }

  @Get()
  findAll() {
    return this.detailService.findAll();
  }

  @Get('/:id')
  findOne(@Param('id') id: string) {
    return this.detailService.findOne(+id);
  }

  @Put('/:id')
  update(@Param('id') id: string, @Body() dto: UpdateDetailDto) {
    return this.detailService.update(+id, dto);
  }

  @Delete('/:id')
  remove(@Param('id') id: string) {
    return this.detailService.remove(+id);
  }
}
