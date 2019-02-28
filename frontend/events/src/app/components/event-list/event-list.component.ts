import { Component, OnInit } from '@angular/core';
import { EventsService } from 'src/app/services/events.service';

@Component({
  selector: 'app-event-list',
  templateUrl: './event-list.component.html',
  styleUrls: ['./event-list.component.css']
})
export class EventListComponent implements OnInit {
  public events = [];
  public event_count;
  public current_page;
  public page_count = 0;
  public next_url;
  public prev_url;
  public page_indexes = [];
  constructor(private eventService: EventsService) { }

  getEvents(page=1){
    // outside the range of pages:
    if (page < 1) return
    if (this.page_count && page > this.page_count) return

    this.eventService.getEvents(page)
    .subscribe( 
      data => {
        this.current_page = page;
        this.events = data['results'];
        this.event_count = data['count'];
        this.next_url = data['next'];
        this.prev_url = data['prev'];
        this.page_count = Math.ceil(data['count']/10);
        this.page_indexes = Array(this.page_count).fill(0).map((x,i)=>i);

    })
  }
  ngOnInit() {
    this.getEvents()
  }
}
