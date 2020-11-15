import {Component, OnInit} from '@angular/core';
import {UserAuctionService} from '../../services/user-auction.service';
import {Items} from '../../interfaces/items';
import {ActivatedRoute, Router} from '@angular/router';

@Component({
  selector: 'app-bill',
  templateUrl: './bill.component.html',
  styleUrls: ['./bill.component.scss']
})
export class BillComponent implements OnInit {
  item: Items;
  lastBid: number;
  itemId: number;

  constructor(private userAuctionService: UserAuctionService, private activatedRoute: ActivatedRoute, private route: Router) {
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(res => this.itemId = res.id); // get url params
    this.userAuctionService.getAwardedItemById(this.itemId).subscribe(
      res => {
        this.item = res[0];
        this.lastBid = res[1];
      },
      error => this.route.navigate(['/costumer/items/awarded']));
  }

}
