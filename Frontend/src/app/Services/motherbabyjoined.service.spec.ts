import { TestBed } from '@angular/core/testing';

import { MotherbabyjoinedService } from './motherbabyjoined.service';

describe('MotherbabyjoinedService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MotherbabyjoinedService = TestBed.get(MotherbabyjoinedService);
    expect(service).toBeTruthy();
  });
});
