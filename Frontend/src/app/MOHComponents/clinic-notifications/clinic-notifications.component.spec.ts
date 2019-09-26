import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ClinicNotificationsComponent } from './clinic-notifications.component';

describe('ClinicNotificationsComponent', () => {
  let component: ClinicNotificationsComponent;
  let fixture: ComponentFixture<ClinicNotificationsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ClinicNotificationsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ClinicNotificationsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
