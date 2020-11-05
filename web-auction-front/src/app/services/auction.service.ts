import {Injectable} from '@angular/core';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {Items} from '../interfaces/items';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuctionService {

  serverInfo = {
    grant_type: 'password',
    client_id: 2,
    client_secret: '7R5Ahiv2xteJB0XKZ3N8RPYDG17VQbN9TNOLRvCg',
    scope: '*'
  };
  headers = {Authorization: `Bearer ${localStorage.getItem('token')}`};

  constructor(private httpClient: HttpClient) {
  }

  getAll(): Observable<Items[]> {
    return this.httpClient.get<Items[]>(environment.apiUrl + 'all_items', {headers: this.headers});
  }

  getById(id): Observable<any> {
    return this.httpClient.post<any>(environment.apiUrl + 'view_item/' + id, this.serverInfo, {headers: this.headers});
  }

  saveBid(resource) {
    return this.httpClient.post(environment.apiUrl + 'save_bid', {
      ...resource, ...this.serverInfo
    }, {headers: this.headers});
  }

}
