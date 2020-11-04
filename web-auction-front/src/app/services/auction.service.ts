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

  constructor(private httpClient: HttpClient) {
  }

  getAll(): Observable<Articles[]> {
    const headers = {Authorization: `Bearer ${localStorage.getItem('token')}`};
    return this.httpClient.get<Articles[]>(environment.apiUrl + 'all_articles', {headers});
  }


}
