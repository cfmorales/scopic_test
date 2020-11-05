import {Injectable} from '@angular/core';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {Articles} from '../interfaces/articles';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuctionService {

  serverInfo = {
    grant_type: 'password',
    client_id: 2,
    client_secret: '6BcUk3AqDkaFWk6kQdbygNte0CGYmfD0vsYnpUgy',
    scope: '*'
  };
  headers = {Authorization: `Bearer ${localStorage.getItem('token')}`};

  constructor(private httpClient: HttpClient) {
  }

  getAll(): Observable<Articles[]> {
    return this.httpClient.get<Articles[]>(environment.apiUrl + 'all_articles', {headers: this.headers});
  }

  getById(id): Observable<any> {
    return this.httpClient.post<any>(environment.apiUrl + 'view_article/' + id, this.serverInfo, {headers: this.headers});
  }

  saveBid(resource) {
    return this.httpClient.post(environment.apiUrl + 'save_bid', {
      ...resource, ...this.serverInfo
    }, {headers: this.headers});
  }

}
