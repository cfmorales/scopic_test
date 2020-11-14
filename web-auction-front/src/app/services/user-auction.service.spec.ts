import { TestBed } from '@angular/core/testing';

import { UserAuctionService } from './user-auction.service';

describe('UserAuctionService', () => {
  let service: UserAuctionService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(UserAuctionService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
