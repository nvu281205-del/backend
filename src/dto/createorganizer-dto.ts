import { IsNotEmpty, IsString } from 'class-validator';

export class CreateOrganizerDto {
  @IsNotEmpty({ message: 'Đường dẫn logo không được để trống' })
  @IsString({ message: 'Đường dẫn logo là chuỗi' })
  logoUrl: string;
  @IsNotEmpty({ message: 'Tên ban tổ chức không để trống' })
  @IsString({ message: 'Tên ban tổ chức phải là chuỗi' })
  name: string;
  @IsNotEmpty({ message: 'Mô tả không được để trống' })
  @IsString({ message: 'Mô tả ban tổ chức phải là chuỗi' })
  description: string;
}
