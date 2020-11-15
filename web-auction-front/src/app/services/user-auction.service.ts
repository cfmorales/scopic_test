import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {environment} from '../../environments/environment';
import {Items} from '../interfaces/items';

@Injectable({
  providedIn: 'root'
})
export class UserAuctionService {
  serverInfo = {
    grant_type: 'password',
    client_id: 2,
    client_secret: '7R5Ahiv2xteJB0XKZ3N8RPYDG17VQbN9TNOLRvCg',
    scope: '*'
  };
  headers = {Authorization: `Bearer ${localStorage.getItem('token')}`};

  constructor(private httpClient: HttpClient) {
  }

  getAllBids(): Observable<any[]> {
    return this.httpClient.get<any[]>(environment.apiUrl + 'user/bids', {headers: this.headers});
  }

  getAllAwardedItems(): Observable<Items[]> {
    return this.httpClient.get<Items[]>(environment.apiUrl + 'user/awarded_items', {headers: this.headers});
  }

  getAwardedItemById(id: number): Observable<any> {
    return this.httpClient.get<any>(environment.apiUrl + 'user/awarded_item/' + id, {headers: this.headers});
  }
}
