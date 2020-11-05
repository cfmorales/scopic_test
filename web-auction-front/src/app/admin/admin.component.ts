import {Component, OnInit} from '@angular/core';
import {Items} from '../interfaces/items';
import {AuctionService} from '../services/auction.service';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent implements OnInit {
  listItems: Items[];

  constructor(private auctionService: AuctionService) {
  }

  ngOnInit(): void {
    this.auctionService.getAll().subscribe(res => {
      this.listItems = res;
    });
  }

  view(id: number) {
    console.log(id);
  }

  edit(id: number) {
    console.log(id);

  }

  delete(id: number) {
    console.log(id);

  }
}
