package org.dodream.web.fitners.auction.service;

import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.AuctionListDTO;
import org.dodream.web.fitners.auction.dto.ProgramDTO;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface AuctionService {

    AuctionDTO read(Long ano);

    MemberPhysicalDTO getMemberPhysical(String mid);

    Long registerAuction(AuctionDTO auctionDTO, MemberPhysicalDTO memberPhysicalDTO, ProgramDTO programDTO);

    List<ProgramDTO> getProgram();

    List<ProgramDTO> getProgramList();

    void addCategory(ProgramDTO programDTO);

    PageResponseDTO<AuctionListDTO> getAuctionLists(PageRequestDTO pageRequestDTO);


}
