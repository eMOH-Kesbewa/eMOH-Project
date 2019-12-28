import { TestBed } from '@angular/core/testing';

import { PhmdailyupdateService } from './phmdailyupdate.service';

describe('PhmdailyupdateService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: PhmdailyupdateService = TestBed.get(PhmdailyupdateService);
    expect(service).toBeTruthy();
  });
});
