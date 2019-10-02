import { TestBed } from '@angular/core/testing';

import { FamiliesService } from './families.service';

describe('FamiliesService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: FamiliesService = TestBed.get(FamiliesService);
    expect(service).toBeTruthy();
  });
});
