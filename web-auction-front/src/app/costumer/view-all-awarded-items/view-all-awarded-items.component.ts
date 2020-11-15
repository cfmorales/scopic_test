import {Component, OnInit} from '@angular/core';
import {Items} from '../../interfaces/items';
import {UserAuctionService} from '../../services/user-auction.service';

@Component({
  selector: 'app-view-all-awarded-items',
  templateUrl: './view-all-awarded-items.component.html',
  styleUrls: ['./view-all-awarded-items.component.scss']
})
export class ViewAllAwardedItemsComponent implements OnInit {
  listItems: Items[];

  constructor(private userAuctionService: UserAuctionService) {
  }

  ngOnInit(): void {
    this.userAuctionService.getAllAwardedItems().subscribe(res => this.listItems = res);
  }

}
