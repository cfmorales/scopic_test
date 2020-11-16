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
  status = false;
  statusClass = '';
  messageStatus = '';

  constructor(private userAuctionService: UserAuctionService) {
  }

  ngOnInit(): void {
    this.userAuctionService.getAllAwardedItems().subscribe(res => this.listItems = res);
  }

  requestEmail(id: number): void {
    this.userAuctionService.requestEmailItemAwarded(id).subscribe(res => {
      this.messages('alert alert-success mt-2', 'The email was sent');
    }, error => {
      this.messages('alert alert-danger mt-2', 'There was an error');
    });
  }

  private messages(statusClass, message): void {
    this.statusClass = statusClass;
    this.messageStatus = message;
    this.status = true;
    setTimeout(() => this.status = false, 3000);
  }

}
