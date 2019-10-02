import { TestBed } from '@angular/core/testing';

import { BabiesService } from './babies.service';

describe('BabiesService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: BabiesService = TestBed.get(BabiesService);
    expect(service).toBeTruthy();
  });
});
