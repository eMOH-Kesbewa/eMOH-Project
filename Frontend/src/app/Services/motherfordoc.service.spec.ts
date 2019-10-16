import { TestBed } from '@angular/core/testing';

import { MotherfordocService } from './motherfordoc.service';

describe('MotherfordocService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MotherfordocService = TestBed.get(MotherfordocService);
    expect(service).toBeTruthy();
  });
});
