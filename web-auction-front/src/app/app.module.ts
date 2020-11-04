import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {SiteFrameworkModule} from './site-framework/site-framework.module';
import { LoginComponent } from './welcome/login/login.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent
  ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        SiteFrameworkModule
    ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
