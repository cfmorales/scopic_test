import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup} from '@angular/forms';
import {Router} from '@angular/router';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.scss']
})
export class SidebarComponent implements OnInit {
  sideForm: FormGroup;

  constructor(private fb: FormBuilder, private router: Router) {
    this.sideForm = fb.group({
      name: '',
      description: ''
    });
  }

  ngOnInit(): void {
  }

  search() {
    // const {name, description} = this.sideForm.value;
    this.router.navigate(['/auction'], {queryParams: this.sideForm.value});
  }
}
