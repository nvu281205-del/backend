import { Module } from '@nestjs/common';
import { OrganizerController } from './organizer.controller';
import { OrganizerService } from './organizer.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Organizer } from 'src/entity/organizer.entity';

@Module({
  providers: [OrganizerService],
  controllers: [OrganizerController],
  imports: [TypeOrmModule.forFeature([Organizer])],
})
export class OrganizerModule {}
