package org.dodream.web.fitners.auction.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.dto.BiddingDTO;
import org.dodream.web.fitners.auction.mapper.BiddingMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class BiddingServiceImpl implements BiddingService{

    private final BiddingMapper biddingMapper;


    @Override
    public List<BiddingDTO> getBidding(Long ano) {
        return biddingMapper.selectBidding(ano).stream().map(bidding -> entitytoDTO(bidding)).collect(Collectors.toList());
    }
}
