import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {CostumerComponent} from './costumer.component';
import {ViewAllBidsComponent} from './view-all-bids/view-all-bids.component';
import {ViewAllAwardedItemsComponent} from './view-all-awarded-items/view-all-awarded-items.component';
import {BillComponent} from './bill/bill.component';


const routes: Routes = [{
  path: '',
  component: CostumerComponent,
  children: [
    {path: '', component: ViewAllBidsComponent},
    {path: 'items/awarded', component: ViewAllAwardedItemsComponent},
    {path: 'bill/:id', component: BillComponent},
  ]
},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class CostumerRoutingModule {
}
