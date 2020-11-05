import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {UserService} from '../../services/user.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  status = false;
  constructor(private fb: FormBuilder, private userService: UserService, private router: Router) {
    this.loginForm = fb.group({
      email: ['', [Validators.email, Validators.required]],
      password: ['', [Validators.required, Validators.minLength(6)]]
    });
  }

  ngOnInit(): void {
  }

  login() {
    const data = {username: this.loginForm.value.email, password: this.loginForm.value.password};
    this.userService.login(data).subscribe(
      res => {
        localStorage.setItem('token', res.access_token);
        this.router.navigate(['/']);
      },
      error => {
       this.status = true;
      });
  }
}
