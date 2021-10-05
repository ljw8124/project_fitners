package org.dodream.web.fitners.auction.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.ProgramDTO;
import org.dodream.web.fitners.auction.service.AuctionService;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.dodream.web.fitners.security.service.CustomUserDetailsService;
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
    public void getRegister() {
        log.warn("=========================auction get register=================");
    }

    @PostMapping("/register")
    public String postRegister(AuctionDTO auctionDTO, MemberPhysicalDTO memberPhysicalDTO, Model model) {
        log.warn("========================auction post register start=================" + auctionDTO, memberPhysicalDTO);

        Long ano = auctionService.registerAuction(auctionDTO, memberPhysicalDTO);

        model.addAttribute("ano", ano);
        log.warn("=======================auction post register success================");

        return "redirect:/auction/list";

    }

}
