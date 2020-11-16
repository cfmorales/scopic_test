import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {UserService} from '../../services/user.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {
  registerForm: FormGroup;
  status = false;
  statusClass = '';
  messageStatus = '';

  constructor(private fb: FormBuilder, private userService: UserService, private router: Router) {
    this.registerForm = fb.group({
      name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(3)]]
    });
  }

  ngOnInit(): void {
  }

  register() {
    const formValues = this.registerForm.value;
    this.userService.register(formValues).subscribe(res => {
      this.statusClass = 'alert alert-success mt-2';
      this.messageStatus = 'The user was saved, please login';
      this.status = true;
      setTimeout(() => this.router.navigate(['login']), 1500);
    }, error => {
      this.statusClass = 'alert alert-danger mt-2';
      this.messageStatus = 'There was an error with the validation, check if server is running and if the name/email are unique';
      this.status = true;
    });
  }
}
