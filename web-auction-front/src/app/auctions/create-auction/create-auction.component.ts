import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';

@Component({
  selector: 'app-create-auction',
  templateUrl: './create-auction.component.html',
  styleUrls: ['./create-auction.component.scss']
})
export class CreateAuctionComponent implements OnInit {
  createForm: FormGroup;

  constructor(private fb: FormBuilder) {
    this.createForm = fb.group({
      name: ['', [Validators.required]],
      description: ['', [Validators.required]],
      date_end: ['', Validators.required],
      image_url: ['', Validators.required],
    });
  }

  ngOnInit(): void {
  }

  createProduct(form: any): void {

    const {title, price, description, category} = form;
    console.log(form.value);
  }
}
