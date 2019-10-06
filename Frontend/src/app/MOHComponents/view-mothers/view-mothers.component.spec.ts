import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewMothersComponent } from './view-mothers.component';

describe('ViewMothersComponent', () => {
  let component: ViewMothersComponent;
  let fixture: ComponentFixture<ViewMothersComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewMothersComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewMothersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
