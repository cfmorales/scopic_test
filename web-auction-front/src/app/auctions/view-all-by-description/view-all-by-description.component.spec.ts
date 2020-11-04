import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllByDescriptionComponent } from './view-all-by-description.component';

describe('ViewAllByDescriptionComponent', () => {
  let component: ViewAllByDescriptionComponent;
  let fixture: ComponentFixture<ViewAllByDescriptionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewAllByDescriptionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewAllByDescriptionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
