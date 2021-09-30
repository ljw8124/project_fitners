package org.dodream.web.fitners.security.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.security.config.SecurityConfig;
import org.dodream.web.fitners.security.domain.Member;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {SecurityConfig.class, RootConfig.class})
public class MemberMapperTests {

    @Autowired
    MemberMapper memberMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Test
    public void memberTest() {
        String mid = "yong025";

        Member member = memberMapper.findByMid(mid);

        log.warn("==============================");
        log.warn(mid);
    }

    @Test
    public void testEncode(){
        String str = "ljw8124";
        String enStr = passwordEncoder.encode(str);

        log.warn(enStr);
    }


}
