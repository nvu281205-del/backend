import { IsNotEmpty, IsString, IsNumber } from 'class-validator';
export class CreateDetailDto {
  @IsNotEmpty({ message: 'Phải nhập loại vé' })
  @IsString({ message: 'Loại vé là chuỗi' })
  type: string;
  @IsNotEmpty({ message: 'Phải nhập giá vé' })
  @IsNumber({}, { message: 'Giá phải là số' })
  price: number;
  @IsNotEmpty({ message: 'Nhập mã sự kiện' })
  @IsNumber({}, { message: 'mã sự kiện phải là số' })
  eventId: number;
  @IsNotEmpty({ message: 'Phải nhập số lượng' })
  @IsNumber({}, { message: 'Số lượng phải là số' })
  quantity: number;
}
