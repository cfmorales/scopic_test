import {Component, OnInit} from '@angular/core';
import {UserService} from '../../services/user.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  isLogued: any;

  constructor(private userService: UserService, private router: Router) {

  }

  ngOnInit(): void {
  }

  logout() {
    this.userService.removeToken();
    this.isLogued = false;
    this.router.navigate(['/login']);
  }

  get hasAccess() {
    return this.userService.isLogued();
  }

  get isAdmin() {
    return this.userService.isAdmin();

  }
}
