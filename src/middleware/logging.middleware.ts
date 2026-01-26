import { Injectable, NestMiddleware } from '@nestjs/common';

@Injectable()
export class LoggingMiddleWare implements NestMiddleware {
  use(req: any, res: any, next: () => void) {
    // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
    req.user = 'Vũ';
    next();
  }
}
