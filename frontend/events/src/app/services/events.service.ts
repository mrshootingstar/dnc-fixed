import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { IEvent } from '../interfaces/ievent'
import { map } from 'rxjs/operators';
import {Router} from "@angular/router"
import { AuthenticationService } from './authentication.service';

@Injectable({
  providedIn: 'root'
})
export class EventsService {
  events_url=`http://localhost:8000/api/events/`
  constructor(
    private http:HttpClient,
    private router: Router,
    private auth: AuthenticationService
  ) { }

  errorHandler(error: HttpErrorResponse){
    return Observable.throw(error.message || "Server Error");
  }
  
  private getRequestHeader(){
    const token = this.auth.getAuthorizationToken()
    let headers_to_add = {
      'Content-Type':  'application/json',
    }
    if (token){
      headers_to_add['Authorization'] = `Bearer ${token}`
    }
    let httpOptions = {
      headers: new HttpHeaders(headers_to_add)
    };

    return httpOptions;
  }

  getEvent(eventId):Observable<IEvent>{
    const httpOptions = this.getRequestHeader()
    const fullUrl = this.events_url + eventId + "/";
    return this.http.get<IEvent>(fullUrl, httpOptions)
  }
  
  getEvents(page=1):Observable<IEvent[]>{
    
    const httpOptions = this.getRequestHeader()
    const fullUrl = `${this.events_url}?page=${page}`;
    return this.http.get<IEvent[]>(fullUrl, httpOptions);
  }

  rsvp(eventId: BigInteger, answer: string) {
    const httpOptions = this.getRequestHeader();
    return this.http.post<any>(this.events_url + eventId + "/rsvp/", { answer }, httpOptions)
        .pipe(map(result => {
            // login successful if there's a jwt token in the response
            return;
        }));
  }
}
