import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ModernContraceptiveMethodsComponent } from './modern-contraceptive-methods.component';

describe('ModernContraceptiveMethodsComponent', () => {
  let component: ModernContraceptiveMethodsComponent;
  let fixture: ComponentFixture<ModernContraceptiveMethodsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ModernContraceptiveMethodsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ModernContraceptiveMethodsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
