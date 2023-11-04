import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    console.log('hello====>2');
    return 'Hello World!';
  }
}
