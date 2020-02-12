import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegPregMothersComponent } from './reg-preg-mothers.component';

describe('RegPregMothersComponent', () => {
  let component: RegPregMothersComponent;
  let fixture: ComponentFixture<RegPregMothersComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegPregMothersComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegPregMothersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
