import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegPHMComponent } from './reg-phm.component';

describe('RegPHMComponent', () => {
  let component: RegPHMComponent;
  let fixture: ComponentFixture<RegPHMComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegPHMComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegPHMComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
