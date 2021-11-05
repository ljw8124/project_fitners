package org.dodream.web.fitners.auction.service;

import org.dodream.web.fitners.auction.domain.Bidding;
import org.dodream.web.fitners.auction.dto.BiddingDTO;

import java.util.List;

public interface BiddingService {

    List<BiddingDTO> getBidding(Long ano);


    default BiddingDTO entitytoDTO(Bidding bidding){

        BiddingDTO biddingDTO = BiddingDTO.builder()
                .ano(bidding.getAno())
                .bidno(bidding.getBidno())
                .tid(bidding.getTid())
                .tname(bidding.getTname())
                .price(bidding.getPrice())
                .readDate(bidding.getReadDate())
                .awardname(bidding.getAwardname())
                .build();

        return biddingDTO;
    }

}
