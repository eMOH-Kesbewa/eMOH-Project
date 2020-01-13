import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegMotherComponent } from './reg-mother.component';

describe('RegMotherComponent', () => {
  let component: RegMotherComponent;
  let fixture: ComponentFixture<RegMotherComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegMotherComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegMotherComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
