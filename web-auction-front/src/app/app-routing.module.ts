import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {LoginComponent} from './welcome/login/login.component';

const routes: Routes = [
  {path: 'auction', loadChildren: () => import('./auctions/auctions.module').then(m => m.AuctionsModule)},
  {
    path: 'login', component: LoginComponent
  }
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
