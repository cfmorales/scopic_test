import {Component, OnInit} from '@angular/core';
import {AuctionService} from '../../services/auction.service';
import {Articles} from '../../interfaces/articles';
import {ActivatedRoute} from '@angular/router';
import {FormControl, FormGroup, Validators} from '@angular/forms';

@Component({
  selector: 'app-view-auction',
  templateUrl: './view-auction.component.html',
  styleUrls: ['./view-auction.component.scss']
})
export class ViewAuctionComponent implements OnInit {

  article: Articles;
  articleId: number;
  auctionForm: FormGroup;
  userAuction: any;
  message = '';
  status = false;
  statusClass = '';

  constructor(private auctionService: AuctionService, private activatedRoute: ActivatedRoute) {
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(res => this.articleId = res.id); // get url params
    this.auctionService.getById(this.articleId).subscribe(res => {
      this.article = res.article;
      res.user_auction ? this.userAuction = res.user_auction : this.userAuction = null;
      const bidValue = this.userAuction ? this.userAuction.bid + 1 : 1;
      this.auctionForm = new FormGroup({
        bid: new FormControl(bidValue, [Validators.required, Validators.min(bidValue)])
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
    const data = {bid: this.auctionForm.value.bid, article_id: this.articleId};
    console.log(data);
    this.auctionService.saveBid(data).subscribe(
      res => {
        this.status = true;
        this.message = 'Your bid was saved and for now you cant make another bid';
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
