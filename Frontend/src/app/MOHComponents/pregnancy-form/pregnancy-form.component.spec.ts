import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PregnancyFormComponent } from './pregnancy-form.component';

describe('PregnancyFormComponent', () => {
  let component: PregnancyFormComponent;
  let fixture: ComponentFixture<PregnancyFormComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PregnancyFormComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PregnancyFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
