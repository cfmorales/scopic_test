import {Component, OnInit} from '@angular/core';
import {AuctionService} from '../../services/auction.service';
import {Items} from '../../interfaces/items';
import {ActivatedRoute} from '@angular/router';
import {FormControl, FormGroup, Validators} from '@angular/forms';

@Component({
  selector: 'app-view-auction',
  templateUrl: './view-auction.component.html',
  styleUrls: ['./view-auction.component.scss']
})
export class ViewAuctionComponent implements OnInit {

  item: Items;
  itemId: number;
  auctionForm: FormGroup;
  userAuction: any;
  message = '';
  status = false;
  statusClass = '';
  bidHistory: any;
  bidValue: number;
  timeLeft: any;

  constructor(private auctionService: AuctionService, private activatedRoute: ActivatedRoute) {
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(res => this.itemId = res.id); // get url params
    this.auctionService.getById(this.itemId).subscribe(res => {
      this.item = res.item;
      this.bidHistory = res.history;
      this.timeLeft = res.time_left;
      this.bidValue = res.user_auction ? res.user_auction.bid + 1 : 1;
      this.auctionForm = new FormGroup({
        bid: new FormControl(this.bidValue, [Validators.required, Validators.min(this.bidValue)])
      });
      if (!res.can_bid) {
        this.sendMessage(true, 'Your bid was the last one, please wait for another offer', 'danger');
        this.auctionForm.disable();
      }
      this.checkExpired();
    });
  }

  private checkExpired() {
    if (this.timeLeft[0] === 0 && this.timeLeft[1] === 0) {
      this.sendMessage(true, 'This auction is expired', 'danger');
      this.auctionForm.disable();
    }
  }

  saveBid() {
    const data = {bid: this.auctionForm.value.bid, item_id: this.itemId};
    console.log(data);
    this.auctionService.saveBid(data).subscribe(
      res => {
        this.sendMessage(true, 'Your bid was saved and for now you can\'t make another one', 'success');
        this.auctionForm.disable();
      },
      error => {
        this.sendMessage(true, 'There is an error with this request', 'danger');
      });
  }

  private sendMessage(status, message, classType): void {
    this.status = status;
    this.message = message;
    this.statusClass = 'alert alert-' + classType + ' mt-2';
  }
}
