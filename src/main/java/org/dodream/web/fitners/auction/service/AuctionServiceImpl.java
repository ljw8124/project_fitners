package org.dodream.web.fitners.auction.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.ProgramDTO;
import org.dodream.web.fitners.auction.mapper.AuctionMapper;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;


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

    @Override
    public List<ProgramDTO> getProgram() {
        List<ProgramDTO> programDTOList =
                auctionMapper.selectProgram().stream().map(program -> program.getDTO()).collect(Collectors.toList());
        return programDTOList;
    }

    @Override
    public Long registerAuction(AuctionDTO auctionDTO, MemberPhysicalDTO memberPhysicalDTO, ProgramDTO programDTO) {
        Auction auction = auctionDTO.getDomain();

        auctionMapper.insertAuction(auction);
        auctionMapper.insertMemberPhysical(memberPhysicalDTO.getDomain());

        Long ano = auction.getAno();
        programDTO.setAno(ano);

        String str = programDTO.getModule();
        String[] result = str.split(",");

        for(int i = 0; i < result.length; i++) {

            programDTO.setModule(result[i++]);
            programDTO.setDetail(result[i]);

            auctionMapper.insertAuctionCategory(programDTO.getDomain());
        }
        return ano;
    }

    @Override
    public List<ProgramDTO> getProgramList() {
       List<ProgramDTO> programDTOList =
               auctionMapper.getProgramList().stream().map(program -> program.getDTO()).collect(Collectors.toList());

       return  programDTOList;
    }

    @Override
    public void addCategory(ProgramDTO programDTO) {
        auctionMapper.insertAuctionCategory(programDTO.getDomain());
    }
}