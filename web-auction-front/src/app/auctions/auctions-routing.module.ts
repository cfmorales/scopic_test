import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {AuctionsComponent} from './auctions.component';
import {ViewAllAuctionsComponent} from './view-all-auctions/view-all-auctions.component';
import {ViewAllByNameComponent} from './view-all-by-name/view-all-by-name.component';
import {ViewAllByDescriptionComponent} from './view-all-by-description/view-all-by-description.component';
import {ViewAuctionComponent} from './view-auction/view-auction.component';
import {AuthenticatedGuard} from '../guards/authenticated.guard';

const routes: Routes = [
  {
    path: '',
    component: AuctionsComponent,
    canActivate: [AuthenticatedGuard],
    children: [
      {path: '', component: ViewAllAuctionsComponent},
      {path: 'name', pathMatch: 'full', component: ViewAllByNameComponent},
      {path: 'description', pathMatch: 'full', component: ViewAllByDescriptionComponent},

    ]
  },
  {path: 'view-auction/:id', pathMatch: 'full', component: ViewAuctionComponent}

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AuctionsRoutingModule {
}
