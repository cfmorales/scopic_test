import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllByNameComponent } from './view-all-by-name.component';

describe('ViewAllByNameComponent', () => {
  let component: ViewAllByNameComponent;
  let fixture: ComponentFixture<ViewAllByNameComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewAllByNameComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewAllByNameComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
