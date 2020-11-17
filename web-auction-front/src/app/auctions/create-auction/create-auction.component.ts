import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {AuctionService} from '../../services/auction.service';

@Component({
  selector: 'app-create-auction',
  templateUrl: './create-auction.component.html',
  styleUrls: ['./create-auction.component.scss']
})
export class CreateAuctionComponent implements OnInit {
  createForm: FormGroup;
  message = '';
  status = false;
  statusClass = '';
  constructor(private fb: FormBuilder, private auctionService: AuctionService) {
    this.createForm = fb.group({
      name: ['', [Validators.required]],
      description: ['', [Validators.required]],
      auction_end: ['', Validators.required],
      image_url: ['', [Validators.required, Validators.pattern('(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?')]],

    });
  }

  ngOnInit(): void {
  }

  createProduct(form: any): void {

    const {name, description, auction_end, image_url} = form;
    this.createForm.disable();
    this.auctionService.createItem({name, description, auction_end, image_url})
      .subscribe(res => {
          this.status = true;
          this.message = 'This auction Item was saved successfully';
          this.statusClass = 'alert alert-success mt-2';
          this.createForm.enable();
          this.createForm.reset();
        },
      error => {
        this.status = true;
        this.message = 'Something went wrong check server connection';
        this.statusClass = 'alert alert-danger mt-2';
        this.createForm.enable();

      });

  }
}
