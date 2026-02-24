import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ValidationPipe } from '@nestjs/common';
import { LoggingMiddleWare } from './middleware/logging.middleware';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.useGlobalPipes(new ValidationPipe({ transform: true, whitelist: true }));
  // eslint-disable-next-line @typescript-eslint/unbound-method
  app.use(new LoggingMiddleWare().use);

  app.enableCors({
    origin: ['http://localhost:5173',
      'https://frontend-deploy-sable.vercel.app'
    ]
      ,
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    credentials: true,
  });
  await app.listen(process.env.PORT ?? 3000);
}
void bootstrap();
