import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {LoginComponent} from './welcome/login/login.component';
import {AuthenticatedGuard} from './guards/authenticated.guard';
import {AdminGuard} from './guards/admin.guard';

const routes: Routes = [
  {
    path: 'auction',
    canActivate: [AuthenticatedGuard],
    loadChildren: () => import('./auctions/auctions.module').then(m => m.AuctionsModule)
  },
  {
    path: 'login', component: LoginComponent
  },
  { path: 'admin',
    canActivate: [AuthenticatedGuard, AdminGuard],
    loadChildren: () => import('./admin/admin.module').then(m => m.AdminModule) },
  {path: '', pathMatch: 'full', redirectTo: 'auction'},
  {path: '**', pathMatch: 'full', redirectTo: 'auction'}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
