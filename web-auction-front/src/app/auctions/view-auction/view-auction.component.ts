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
  constructor(private auctionService: AuctionService, private activatedRoute: ActivatedRoute) {
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(res => this.itemId = res.id); // get url params
    this.auctionService.getById(this.itemId).subscribe(res => {
      this.item = res.item;
      this.bidHistory = res.history;
      res.user_auction ? this.userAuction = res.user_auction : this.userAuction = null;
      this.bidValue = this.userAuction ? this.userAuction.bid + 1 : 1;
      this.auctionForm = new FormGroup({
        bid: new FormControl(this.bidValue, [Validators.required, Validators.min(this.bidValue)])
      });
      if (!res.can_bid) {
        this.status = true;
        this.message = 'Your bid was the last one, please wait for another offer';
        this.statusClass = 'alert alert-danger mt-2';
        this.auctionForm.disable();
      }
    });
  }

  saveBid() {
    const data = {bid: this.auctionForm.value.bid, item_id: this.itemId};
    console.log(data);
    this.auctionService.saveBid(data).subscribe(
      res => {
        this.status = true;
        this.message = 'Your bid was saved and for now you can\'t make another one';
        this.statusClass = 'alert alert-success mt-2';
        this.auctionForm.disable();
      },
      error => {
        this.status = true;
        this.message = 'There is an error with this request';
        this.statusClass = 'alert alert-danger mt-2';
      });
  }

}
