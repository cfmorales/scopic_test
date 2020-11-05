import {Component, Input, OnInit, EventEmitter, Output} from '@angular/core';
import {FormGroup} from '@angular/forms';

@Component({
  selector: 'app-form-auction',
  templateUrl: './form-auction.component.html',
  styleUrls: ['./form-auction.component.scss']
})
export class FormAuctionComponent implements OnInit {
  @Input() createForm: FormGroup;
  @Output() newItemEvent = new EventEmitter<any>();
  @Input() typeForm: string;

  constructor() {
  }

  ngOnInit(): void {
  }

  sendItems() {
    this.newItemEvent.emit(this.createForm.value);
  }
}
