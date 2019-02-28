import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-pagination',
  templateUrl: './pagination.component.html',
  styleUrls: ['./pagination.component.css']
})
export class PaginationComponent implements OnInit {
  @Input() event_count;
  pages = []
  page_count;

  constructor() { 
  }

  ngOnInit() {
    this.page_count = Math.ceil(this.event_count / 10)
    this.pages = Array(this.page_count).fill(0).map((x,i)=>i);
  
  }

}
