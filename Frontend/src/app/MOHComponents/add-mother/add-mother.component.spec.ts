import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddMotherComponent } from './add-mother.component';

describe('AddMotherComponent', () => {
  let component: AddMotherComponent;
  let fixture: ComponentFixture<AddMotherComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddMotherComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddMotherComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
