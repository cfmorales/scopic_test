import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllBidsComponent } from './view-all-bids.component';

describe('ViewAllBidsComponent', () => {
  let component: ViewAllBidsComponent;
  let fixture: ComponentFixture<ViewAllBidsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewAllBidsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewAllBidsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
