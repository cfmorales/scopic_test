import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllAuctionsComponent } from './view-all-auctions.component';

describe('ViewAllAuctionsComponent', () => {
  let component: ViewAllAuctionsComponent;
  let fixture: ComponentFixture<ViewAllAuctionsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewAllAuctionsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewAllAuctionsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
