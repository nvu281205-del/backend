import { Type } from 'class-transformer';
import {
  IsDate,
  IsNumber,
  IsOptional,
  IsString,
  IsBoolean,
} from 'class-validator';

export class UpdateEventDTO {
  @IsOptional()
  @IsString({ message: 'Tiêu đề phải là chuỗi' })
  title?: string;

  @IsOptional()
  @IsString({ message: 'Đường dẫn ảnh phải là chuỗi' })
  imgSrc?: string;

  @IsOptional()
  @IsNumber({}, { message: 'Giá phải là số' })
  price?: number;

  @IsOptional()
  @Type(() => Date)
  @IsDate({ message: 'Phải nhập ngày tháng đúng định dạng' })
  date?: Date;

  @IsOptional()
  @IsString({ message: 'Danh mục phải là chuỗi' })
  category?: string;

  @IsOptional()
  @IsBoolean({ message: 'Special phải là boolean' })
  special?: boolean;
}
