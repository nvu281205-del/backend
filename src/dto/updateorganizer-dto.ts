import { IsOptional, IsString } from 'class-validator';

export class UpdateOrganizerDto {
  @IsOptional()
  @IsString({ message: 'Đường dẫn logo phải là chuỗi' })
  logoUrl: string;
  @IsOptional()
  @IsString({ message: 'Tên ban tổ chức phải là chuỗi' })
  name: string;
  @IsOptional()
  @IsString({ message: 'Mô tả ban tổ chức phải là chuỗi' })
  description: string;
}
