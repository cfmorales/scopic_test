import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';

import {CostumerRoutingModule} from './costumer-routing.module';
import {CostumerComponent} from './costumer.component';
import {SidebarComponent} from './sidebar/sidebar.component';
import {ViewAllBidsComponent} from './view-all-bids/view-all-bids.component';
import {ViewAllAwardedItemsComponent} from './view-all-awarded-items/view-all-awarded-items.component';
import {ViewAllBillsComponent} from './view-all-bills/view-all-bills.component';
import {JsonToArrayPipe} from '../pipes/json-to-array.pipe';


@NgModule({
  declarations: [CostumerComponent,
    SidebarComponent,
    ViewAllBidsComponent,
    ViewAllAwardedItemsComponent,
    ViewAllBillsComponent,
    JsonToArrayPipe],

  imports: [
    CommonModule,
    CostumerRoutingModule
  ]
})
export class CostumerModule {
}
