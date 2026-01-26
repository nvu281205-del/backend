import { IsNotEmpty, IsString } from 'class-validator';

export class CreateUserDto {
  @IsNotEmpty({ message: 'Username should not be empty' })
  @IsString({ message: 'Username must be a string' })
  username: string;

  @IsNotEmpty({ message: 'Password should not be empty' })
  @IsString({ message: 'Password must be a string' })
  password: string;
}
