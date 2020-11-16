import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {environment} from '../../environments/environment';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private httpClient: HttpClient) {
  }

  serverInfo = {
    grant_type: 'password',
    client_id: 2,
    client_secret: '7R5Ahiv2xteJB0XKZ3N8RPYDG17VQbN9TNOLRvCg',
    scope: '*'
  };
  headers = {Authorization: `Bearer ${localStorage.getItem('token')}`};

  login(resource): any {
    return this.httpClient.post(environment.apiUrl + 'oauth/token', {
      ...resource, ...this.serverInfo
    });
  }

  getUser(): any {
    return this.httpClient.get(environment.apiUrl + 'user', {
      headers: this.headers
    });
  }

  isAuthorized(): Observable<any> {
    return this.httpClient.post(environment.apiUrl + 'is_authorized', this.serverInfo, {
      headers: this.headers
    });
  }

  removeToken(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('is_admin');
  }

  isLogued() {
    return !!localStorage.getItem('token');
  }

  isAdmin() {
    if (localStorage.getItem('is_admin') === '1') {
      return true;
    } else {
      return false;
    }
  }

  register(resource){
    return this.httpClient.post(environment.apiUrl + 'register', resource);
  }
}

