import { Component, OnInit } from '@angular/core';
import { EventsService } from 'src/app/services/events.service';
import { Router, ActivatedRoute, ParamMap } from '@angular/router';
import { switchMap } from 'rxjs/operators';
import { Observable } from 'rxjs';
import { IEvent } from 'src/app/interfaces/ievent';

@Component({
  selector: 'app-event-detail',
  templateUrl: './event-detail.component.html',
  styleUrls: ['./event-detail.component.css']
})
export class EventDetailComponent implements OnInit {

  event: any;
  eventId;
  constructor(
    private eventService: EventsService, 
    private route: ActivatedRoute,
    private router: Router
  ) { }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
    console.log(params.get('id'))
     this.eventService.getEvent(params.get('id')).subscribe(event =>{
        this.event = event;
    })   
    });
  }
}
