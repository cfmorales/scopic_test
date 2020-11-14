import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllAwardedItemsComponent } from './view-all-awarded-items.component';

describe('ViewAllAwardedItemsComponent', () => {
  let component: ViewAllAwardedItemsComponent;
  let fixture: ComponentFixture<ViewAllAwardedItemsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewAllAwardedItemsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewAllAwardedItemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
