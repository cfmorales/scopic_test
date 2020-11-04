import {Component, OnInit} from '@angular/core';

@Component({
  selector: 'app-view-all-auctions',
  templateUrl: './view-all-auctions.component.html',
  styleUrls: ['./view-all-auctions.component.scss']
})
export class ViewAllAuctionsComponent implements OnInit {
  auctions: any;

  constructor() {
  }

  ngOnInit(): void {
    this.auctions = new Array(10);

  }

}
