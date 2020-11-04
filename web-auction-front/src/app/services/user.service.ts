import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {environment} from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private httpClient: HttpClient) {
  }

  serverInfo = {
    grant_type: 'password',
    client_id: 2,
    client_secret: '6BcUk3AqDkaFWk6kQdbygNte0CGYmfD0vsYnpUgy',
    scope: '*'
  };

  login(resource): any {
    return this.httpClient.post(environment.apiUrl + 'oauth/token', {
      ...resource, ...this.serverInfo
    });
  }

  getUser(): any {
    const headers = {Authorization: `Bearer ${localStorage.getItem('token')}`};
    return this.httpClient.get(environment.apiUrl + 'user', {
      headers
    });
  }
}
