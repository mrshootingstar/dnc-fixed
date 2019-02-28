import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { NgModule } from '@angular/core';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EventListComponent } from './components/event-list/event-list.component';
import { EventDetailComponent } from './components/event-detail/event-detail.component';
import { EventsService } from './services/events.service';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { RegisterComponent } from './components/register/register.component';
import { LoginComponent } from './components/login/login.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { RsvpComponent } from './rsvp/rsvp.component';
import { AuthInterceptor } from './interceptors/AuthInterceptor';

@NgModule({
  declarations: [
    AppComponent,
    EventListComponent,
    EventDetailComponent,
    RegisterComponent,
    LoginComponent,
    NavbarComponent,
    RsvpComponent
  ],
  imports: [
    NgbModule,
    BrowserModule,
    ReactiveFormsModule,
    FormsModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [EventsService,
    { provide: HTTP_INTERCEPTORS, useClass: AuthInterceptor, multi: true  }

  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
