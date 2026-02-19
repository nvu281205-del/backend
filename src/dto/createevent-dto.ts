import { Optional } from '@nestjs/common';
import { Type } from 'class-transformer';
import { IsString, IsNumber, IsNotEmpty, IsDate } from 'class-validator';

export class CreateEventDto {
  @IsNotEmpty({ message: 'Phải nhập tiêu đề' })
  @IsString({ message: 'Tiêu đề phải là chuỗi' })
  title: string;

  @IsNotEmpty({ message: 'Phải nhập đường dẫn ảnh' })
  @IsString({ message: 'Đường dẫn ảnh phải là chuỗi' })
  imgSrc: string;

  @Optional()
  @IsString({ message: 'Đường dẫn video phải là chuỗi' })
  video: string;

  @IsNotEmpty({ message: 'Phải nhập thành phố' })
  @IsString({ message: 'Thành phố phải là chuỗi' })
  city: string;

  @IsNotEmpty({ message: 'Phải nhập địa điểm tổ chức' })
  @IsString({ message: 'Địa điểm tổ chức phải là chuỗi' })
  locate: string;

  @IsNotEmpty({ message: 'Phải nhập địa điểm cụ thể' })
  @IsString({ message: 'Địa điểm cụ thể phải là chuỗi' })
  locatedetail: string;

  @IsNotEmpty({ message: 'Phải nhập tên ban tổ chức' })
  @IsString({ message: 'Tên ban tổ chức phải là chuỗi' })
  organizername: string;

  @IsNotEmpty({ message: 'Phải nhập giới thiệu về ban tổ chức' })
  @IsString({ message: 'Giới thiệu về ban tổ chức phải là chuỗi' })
  organizerdes: string;

  @IsNotEmpty({ message: 'Phải nhập giá tối thiểu' })
  @IsNumber({}, { message: 'Giá phải là số' })
  baseprice: number;

  @IsNotEmpty({ message: 'Phải nhập ngày tháng năm' })
  @Type(() => Date)
  @IsDate({ message: 'Ngày phải đúng định dạng ISO (YYYY-MM-DD)' })
  date: Date;

  @IsNotEmpty({ message: 'Phải nhập khung giờ' })
  @IsString({ message: 'Khung giờ phải là chuỗi, ví dụ: 17:30 - 19:30' })
  timeRange: string;

  @IsNotEmpty({ message: 'Phải nhập thể loại sự kiện' })
  @IsString({ message: 'Thể loại phải là chuỗi' })
  category: string;
}
