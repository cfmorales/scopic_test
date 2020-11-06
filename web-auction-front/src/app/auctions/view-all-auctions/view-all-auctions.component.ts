import {Component, OnDestroy, OnInit} from '@angular/core';
import {AuctionService} from '../../services/auction.service';
import {Items} from '../../interfaces/items';
import {ActivatedRoute, NavigationEnd, Router} from '@angular/router';

@Component({
  selector: 'app-view-all-auctions',
  templateUrl: './view-all-auctions.component.html',
  styleUrls: ['./view-all-auctions.component.scss']
})
export class ViewAllAuctionsComponent implements OnInit, OnDestroy {
  auctions: Items[];
  totalRecord: number;
  page: number;
  queryParams: any;
  mySubscription: any;

  constructor(private auctionService: AuctionService, private activatedRoute: ActivatedRoute, private router: Router) {
    this.router.routeReuseStrategy.shouldReuseRoute = () => {
      return false;
    };
    this.mySubscription = this.router.events.subscribe((event) => {
      if (event instanceof NavigationEnd) {
        this.router.navigated = false;
      }
    });
    this.page = 1;
  }

  ngOnInit(): void {
    this.activatedRoute.queryParams.subscribe(res => this.queryParams = res);
    this.auctionService.getAll(this.queryParams).subscribe(res => {

      this.auctions = res;
      this.totalRecord = res.length;
    });
  }

  ngOnDestroy(): void {
    if (this.mySubscription) {
      this.mySubscription.unsubscribe();
    }
  }
}
