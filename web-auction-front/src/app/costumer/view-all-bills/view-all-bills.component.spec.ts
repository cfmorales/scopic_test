import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllBillsComponent } from './view-all-bills.component';

describe('ViewAllBillsComponent', () => {
  let component: ViewAllBillsComponent;
  let fixture: ComponentFixture<ViewAllBillsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewAllBillsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewAllBillsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
