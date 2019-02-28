import { Component, OnInit, Input } from '@angular/core';
import { EventsService } from '../services/events.service';
import { modelGroupProvider } from '@angular/forms/src/directives/ng_model_group';

@Component({
  selector: 'app-rsvp',
  templateUrl: './rsvp.component.html',
  styleUrls: ['./rsvp.component.css']
})
export class RsvpComponent implements OnInit {
  @Input() event;
  model = {
    yes: false,
    no: false
  };
  constructor(private eventService: EventsService) { }

  ngOnInit() {
    const event_rsvp_status = this.event['rsvped'];

    if (event_rsvp_status){
      this.model[event_rsvp_status] = true;
    }
  }

  public rsvp(eventId, answer) {
    this.eventService.rsvp(eventId,answer).subscribe(
      (data) =>{
        this.model['yes'] = this.model['no'] = false;
        this.model[answer] = true;
        console.log("RSVP returned"); 
      }
    )}
}
