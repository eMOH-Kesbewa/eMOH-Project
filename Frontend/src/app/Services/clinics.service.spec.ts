import { TestBed } from '@angular/core/testing';

import { ClinicsService } from './clinics.service';

describe('ClinicsService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ClinicsService = TestBed.get(ClinicsService);
    expect(service).toBeTruthy();
  });
});
