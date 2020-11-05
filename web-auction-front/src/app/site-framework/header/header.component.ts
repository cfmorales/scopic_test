import {Component, OnInit} from '@angular/core';
import {UserService} from '../../services/user.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  mySubscription: any;

  isLogued: any;
  isAuthorized: any;

  constructor(private userService: UserService, private router: Router) {

  }


  ngOnInit(): void {

    this.isLogued = this.userService.isLogued();

  }


  logout() {
    this.userService.removeToken();
    this.isLogued = false;
    this.router.navigate(['/login']);
  }
}
