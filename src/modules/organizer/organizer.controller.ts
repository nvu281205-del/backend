import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from '@nestjs/common';
import { OrganizerService } from './organizer.service';
import { CreateOrganizerDto } from 'src/dto/createorganizer-dto';
import { UpdateOrganizerDto } from 'src/dto/updateorganizer-dto';
import { Organizer } from 'src/entity/organizer.entity';

@Controller('organizer')
export class OrganizerController {
  constructor(private readonly organservice: OrganizerService) {}
  @Get()
  getall() {
    return this.organservice.getall();
  }
  @Get('/:id')
  getbyid(@Param('id') id: string) {
    return this.organservice.getbyid(+id);
  }
  @Post()
  create(@Body() body: CreateOrganizerDto[]): Promise<Organizer[]> {
    return this.organservice.create(body);
  }
  @Patch('/:id')
  update(@Param('id') id: string, @Body() body: UpdateOrganizerDto) {
    return this.organservice.update(+id, body);
  }
  @Delete('/:id')
  delete(@Param('id') id: string) {
    return this.organservice.delete(+id);
  }
}
