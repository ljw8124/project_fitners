package org.dodream.web.fitners.auction.service;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.common.config.RootConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {AuctionRootConfig.class, RootConfig.class})
public class BiddingServiceTests {

    @Autowired
    BiddingService biddingService;

    @Test
    void getBiddingListTest() {
        biddingService.getBidding(1L);


    }
}
