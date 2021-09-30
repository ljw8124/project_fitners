package org.dodream.web.fitners.auction.mapper;

import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.security.domain.MemberPhysical;

public interface AuctionMapper {

    Auction selectAuction(Long ano);

    MemberPhysical selectMemberPhysical(String mid);

}
