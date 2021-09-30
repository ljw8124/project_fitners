package org.dodream.web.fitners.auction.service;

import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;

public interface AuctionService {

    AuctionDTO read(Long ano);

    MemberPhysicalDTO getMemberPhysical(String mid);

}
