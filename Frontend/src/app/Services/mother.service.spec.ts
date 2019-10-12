import { TestBed } from '@angular/core/testing';

import { MotherService } from './mother.service';

describe('MotherService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MotherService = TestBed.get(MotherService);
    expect(service).toBeTruthy();
  });
});
