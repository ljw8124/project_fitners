package org.dodream.web.fitners.auction.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.AuctionListDTO;
import org.dodream.web.fitners.auction.dto.ProgramDTO;
import org.dodream.web.fitners.auction.service.AuctionService;
import org.dodream.web.fitners.common.dto.PageMaker;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;

import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j2
@RequestMapping("/auction/*")
@RequiredArgsConstructor
public class AuctionController {

    private final AuctionService auctionService;

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/read")
    public void getRead(AuctionDTO auctionDTO, Model model) {

        log.warn("==========================auction get read==================");

        AuctionDTO getAuctionDTO = auctionService.read(auctionDTO.getAno());
        MemberPhysicalDTO getMemberDTO  = auctionService.getMemberPhysical(getAuctionDTO.getMid());
        log.warn(getAuctionDTO);

        model.addAttribute("auctionDTO", getAuctionDTO);
        model.addAttribute("memberDTO", getMemberDTO);

    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/register")
    public void getRegister(ProgramDTO programDTO, Model model) {
     log.warn("=========================auction get register=================");
        List<ProgramDTO> programDTOList = auctionService.getProgram();
        model.addAttribute("program", programDTOList);
    }

    @PostMapping("/register")
    public String postRegister(AuctionDTO auctionDTO, ProgramDTO programDTO, MemberPhysicalDTO memberPhysicalDTO, Model model) {
        log.warn("========================auction post register start=================" + auctionDTO, memberPhysicalDTO);

        Long ano = auctionService.registerAuction(auctionDTO, memberPhysicalDTO, programDTO);

        model.addAttribute("ano", ano);


        log.warn("=======================auction post register success================");

        return "redirect:/auction/list";
    }

    @GetMapping("/list")
    public void getList(PageRequestDTO pageRequestDTO, Model model) {

        log.warn("==========================auction get list==================");
        PageResponseDTO<AuctionListDTO> pageResponseDTO =auctionService.getAuctionLists(pageRequestDTO);
        List<AuctionListDTO> auctionDTOList = pageResponseDTO.getDtoList();
        log.warn(auctionDTOList);

        model.addAttribute("dtoList", pageResponseDTO.getDtoList());

        int page = pageRequestDTO.getPage();
        int size = pageRequestDTO.getSize();
        int total = pageResponseDTO.getCount();

        PageMaker pageMaker = new PageMaker(page, size, total);
        log.warn(pageMaker.toString());

        model.addAttribute("pageMaker", pageMaker);

        log.warn("=======getList success======");


    }

}
