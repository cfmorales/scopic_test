import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';

import {AuctionsRoutingModule} from './auctions-routing.module';
import {AuctionsComponent} from './auctions.component';
import {CreateAuctionComponent} from './create-auction/create-auction.component';
import {UpdateAuctionComponent} from './update-auction/update-auction.component';
import {SidebarComponent} from './sidebar/sidebar.component';
import { ViewAllByNameComponent } from './view-all-by-name/view-all-by-name.component';
import { ViewAllByDescriptionComponent } from './view-all-by-description/view-all-by-description.component';
import { ViewAuctionComponent } from './view-auction/view-auction.component';
import { ViewAllAuctionsComponent } from './view-all-auctions/view-all-auctions.component';


@NgModule({
  declarations: [AuctionsComponent,
    CreateAuctionComponent,
    UpdateAuctionComponent,
    SidebarComponent,
    ViewAllByNameComponent,
    ViewAllByDescriptionComponent,
    ViewAuctionComponent,
    ViewAllAuctionsComponent],
  imports: [
    CommonModule,
    AuctionsRoutingModule
  ]
})
export class AuctionsModule {
}
