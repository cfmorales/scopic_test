import {Component, OnInit} from '@angular/core';
import {UserAuctionService} from '../../services/user-auction.service';
import {JsonToArrayPipe} from '../../pipes/json-to-array.pipe';

@Component({
  selector: 'app-view-all-bids',
  templateUrl: './view-all-bids.component.html',
  styleUrls: ['./view-all-bids.component.scss'],
  providers: [JsonToArrayPipe]
})
export class ViewAllBidsComponent implements OnInit {
  listItems: any[];

  constructor(private userAuctionService: UserAuctionService, private jsonToArrayPipe: JsonToArrayPipe) {
  }

  ngOnInit(): void {
    this.userAuctionService.getAllBids().subscribe(res => {
      this.listItems = this.jsonToArrayPipe.transform(res);
    });

  }

}
