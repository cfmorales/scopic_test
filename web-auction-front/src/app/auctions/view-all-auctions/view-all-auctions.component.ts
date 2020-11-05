import {Component, OnInit} from '@angular/core';
import {AuctionService} from '../../services/auction.service';
import {Items} from '../../interfaces/items';

@Component({
  selector: 'app-view-all-auctions',
  templateUrl: './view-all-auctions.component.html',
  styleUrls: ['./view-all-auctions.component.scss']
})
export class ViewAllAuctionsComponent implements OnInit {
  auctions: Items[];
  totalRecord: number;
  page: number;

  constructor(private auctionService: AuctionService) {
    this.page = 1;
  }

  ngOnInit(): void {
    // this.auctions = new Array(10);
    this.auctionService.getAll().subscribe(res => {
      this.auctions = res;
      this.totalRecord = res.length;
    });
  }

}
