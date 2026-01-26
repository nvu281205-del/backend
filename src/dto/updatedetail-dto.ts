import { Optional } from '@nestjs/common';
import { IsString, IsNumber } from 'class-validator';
export class UpdateDetailDto {
  @Optional()
  @IsString()
  type: string;
  @Optional()
  @IsNumber()
  price: number;
}
