import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UpdateBabyBookComponent } from './update-baby-book.component';

describe('UpdateBabyBookComponent', () => {
  let component: UpdateBabyBookComponent;
  let fixture: ComponentFixture<UpdateBabyBookComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UpdateBabyBookComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UpdateBabyBookComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
