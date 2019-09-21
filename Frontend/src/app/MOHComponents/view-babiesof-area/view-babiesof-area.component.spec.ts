import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewBabiesofAreaComponent } from './view-babiesof-area.component';

describe('ViewBabiesofAreaComponent', () => {
  let component: ViewBabiesofAreaComponent;
  let fixture: ComponentFixture<ViewBabiesofAreaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewBabiesofAreaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewBabiesofAreaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
