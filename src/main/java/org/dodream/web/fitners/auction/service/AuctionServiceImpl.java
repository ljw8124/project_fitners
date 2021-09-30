package org.dodream.web.fitners.auction.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.mapper.AuctionMapper;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.springframework.stereotype.Service;

@Service
@Log4j2
@RequiredArgsConstructor
public class AuctionServiceImpl implements AuctionService {

    private final AuctionMapper auctionMapper;

    @Override
    public AuctionDTO read(Long ano) {
        AuctionDTO auctionDTO = auctionMapper.selectAuction(ano).getDTO();

        return auctionDTO;
    }

    @Override
    public MemberPhysicalDTO getMemberPhysical(String mid) {
        return auctionMapper.selectMemberPhysical(mid).getDTO();
    }


}