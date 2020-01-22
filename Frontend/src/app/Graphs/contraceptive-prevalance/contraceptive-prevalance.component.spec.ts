import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ContraceptivePrevalanceComponent } from './contraceptive-prevalance.component';

describe('ContraceptivePrevalanceComponent', () => {
  let component: ContraceptivePrevalanceComponent;
  let fixture: ComponentFixture<ContraceptivePrevalanceComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ContraceptivePrevalanceComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ContraceptivePrevalanceComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
