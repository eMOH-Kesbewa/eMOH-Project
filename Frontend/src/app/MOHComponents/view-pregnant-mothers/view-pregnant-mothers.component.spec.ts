import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewPregnantMothersComponent } from './view-pregnant-mothers.component';

describe('ViewPregnantMothersComponent', () => {
  let component: ViewPregnantMothersComponent;
  let fixture: ComponentFixture<ViewPregnantMothersComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewPregnantMothersComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewPregnantMothersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
