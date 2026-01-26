import { Type } from 'class-transformer';
import {
  IsArray,
  ValidateNested,
  IsNotEmpty,
  IsNumber,
  IsString,
} from 'class-validator';

export class TicketDto {
  @IsNotEmpty({ message: 'Không để thiếu ticketId' })
  @IsNumber({}, { message: 'ticketId phải là số' })
  ticketId: number;

  @IsNotEmpty({ message: 'Không để thiếu số lượng' })
  @IsNumber({}, { message: 'count phải là số' })
  count: number;
}

export class CreateOrderDto {
  @IsNotEmpty({ message: 'Không để thiếu eventId' })
  @IsNumber({}, { message: 'eventId phải là số' })
  eventId: number;

  @IsNotEmpty({ message: 'Không để thiếu tổng tiền' })
  @IsNumber({}, { message: 'totalPrice phải là số' })
  totalPrice: number;

  @IsArray({ message: 'tickets phải là một mảng' })
  @ValidateNested({ each: true })
  @Type(() => TicketDto)
  tickets: TicketDto[];

  @IsNotEmpty({ message: 'Không để thiếu phương thức thanh toán' })
  @IsString({ message: 'payment_method phải là chuỗi' })
  payment_method: string;
}
