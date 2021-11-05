package org.dodream.web.fitners.auction.mapper;

import org.dodream.web.fitners.auction.domain.Bidding;

import java.util.List;

public interface BiddingMapper {

    List<Bidding> selectBidding(Long ano); //read에서 bidding한 트레이너 소환
}
