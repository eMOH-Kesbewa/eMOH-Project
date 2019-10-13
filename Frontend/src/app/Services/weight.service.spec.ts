import { TestBed } from '@angular/core/testing';

import { WeightService } from './weight.service';

describe('WeightService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: WeightService = TestBed.get(WeightService);
    expect(service).toBeTruthy();
  });
});
