import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';

import {CostumerRoutingModule} from './costumer-routing.module';
import {CostumerComponent} from './costumer.component';
import {SidebarComponent} from './sidebar/sidebar.component';
import {ViewAllBidsComponent} from './view-all-bids/view-all-bids.component';
import {ViewAllAwardedItemsComponent} from './view-all-awarded-items/view-all-awarded-items.component';
import {JsonToArrayPipe} from '../pipes/json-to-array.pipe';
import { BillComponent } from './bill/bill.component';


@NgModule({
  declarations: [CostumerComponent,
    SidebarComponent,
    ViewAllBidsComponent,
    ViewAllAwardedItemsComponent,
    JsonToArrayPipe,
    BillComponent],

  imports: [
    CommonModule,
    CostumerRoutingModule
  ]
})
export class CostumerModule {
}
