import { IsNumber, IsOptional, IsString } from 'class-validator';

export class UpdateUserDto {
  @IsOptional()
  @IsString({ message: 'Tên phải là kí tự' })
  name: string;
  @IsOptional()
  @IsNumber({}, { message: 'tuổi phải là số' })
  age: number;
  @IsOptional()
  email: string;
  @IsOptional()
  password: string;
}
