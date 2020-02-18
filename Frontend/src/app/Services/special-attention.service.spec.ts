import { TestBed } from '@angular/core/testing';

import { SpecialAttentionService } from './special-attention.service';

describe('SpecialAttentionService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: SpecialAttentionService = TestBed.get(SpecialAttentionService);
    expect(service).toBeTruthy();
  });
});
