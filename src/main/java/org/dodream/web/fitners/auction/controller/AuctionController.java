package org.dodream.web.fitners.auction.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.service.AuctionService;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.dodream.web.fitners.security.service.CustomUserDetailsService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/auction/*")
@RequiredArgsConstructor
public class AuctionController {

    private final AuctionService auctionService;
    private final CustomUserDetailsService memberService;

    @GetMapping("/read")
    public void getRead(AuctionDTO auctionDTO, Model model) {

        log.warn("==========================auction get read==================");

        AuctionDTO getAuctionDTO = auctionService.read(auctionDTO.getAno());
        MemberPhysicalDTO getMemberDTO  = auctionService.getMemberPhysical(getAuctionDTO.getMid());
        log.warn(getAuctionDTO);

        model.addAttribute("auctionDTO", getAuctionDTO);
        model.addAttribute("memberDTO", getMemberDTO);


    }

}
