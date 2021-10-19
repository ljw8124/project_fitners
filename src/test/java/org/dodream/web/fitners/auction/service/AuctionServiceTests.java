package org.dodream.web.fitners.auction.service;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.ProgramDTO;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {AuctionRootConfig.class, RootConfig.class})
public class AuctionServiceTests {

    @Autowired
    private AuctionService auctionService;

    @Test
    public void readTest() {

        log.info(auctionService.read(3L));
    }



}
