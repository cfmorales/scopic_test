import {Pipe, PipeTransform} from '@angular/core';

@Pipe({
  name: 'jsonToArray'
})
export class JsonToArrayPipe implements PipeTransform {

  transform(value): any {
    const keys = [];
    for (const key in value) {
      keys.push({key, value: value[key]});
    }
    return keys;
  }

}
