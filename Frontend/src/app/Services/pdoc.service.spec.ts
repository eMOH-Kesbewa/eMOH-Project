import { TestBed } from '@angular/core/testing';

import { PdocService } from './pdoc.service';

describe('PdocService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: PdocService = TestBed.get(PdocService);
    expect(service).toBeTruthy();
  });
});
