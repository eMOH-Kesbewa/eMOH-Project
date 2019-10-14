import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewWeightTableComponent } from './view-weight-table.component';

describe('ViewWeightTableComponent', () => {
  let component: ViewWeightTableComponent;
  let fixture: ComponentFixture<ViewWeightTableComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewWeightTableComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewWeightTableComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
