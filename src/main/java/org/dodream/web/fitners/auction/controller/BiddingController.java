package org.dodream.web.fitners.auction.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

import org.dodream.web.fitners.auction.dto.BiddingDTO;
import org.dodream.web.fitners.auction.service.BiddingService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Log4j2
@RequestMapping("bidding")
@RequiredArgsConstructor
public class BiddingController {

    private final BiddingService biddingService;

    @GetMapping("/list/{ano}")
    public List<BiddingDTO> selectBiddings(@PathVariable(name="ano") Long ano){

        return biddingService.getBidding(ano);
    }
}
