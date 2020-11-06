import {Component, OnInit} from '@angular/core';
import {Items} from '../interfaces/items';
import {AuctionService} from '../services/auction.service';
import {FormBuilder, FormGroup} from '@angular/forms';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent implements OnInit {
  listItems: Items[];
  adminSearchForm: FormGroup;

  constructor(private auctionService: AuctionService, private fb: FormBuilder) {
    this.adminSearchForm = this.fb.group({
      name: ''
    });
  }

  ngOnInit(): void {
    this.auctionService.getAll({}).subscribe(res => {
      this.listItems = res;
    });
  }

  delete(id: number) {
    this.auctionService.delete({itemId: id}).subscribe(res => {
        this.listItems = this.listItems.filter(item => item.id !== id);
      },
      error => {
      });
  }

  adminSearch() {
    this.auctionService.getAll(this.adminSearchForm.value).subscribe(res => this.listItems = res);
  }
}
