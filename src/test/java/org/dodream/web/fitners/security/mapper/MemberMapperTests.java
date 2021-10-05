package org.dodream.web.fitners.security.mapper;

import lombok.extern.log4j.Log4j2;
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
        String str = "yojino3";
        String enStr = passwordEncoder.encode(str);

        log.warn(enStr);
    }

    @Test
    public void signUpTest() {
        String mid = "taeito92";
        String mpassword = "taeito92";
        String bcriptMpw = passwordEncoder.encode(mpassword);
        String mname = "성윤정";
        String memail = "taeito92@naver.com";

        Member member = Member.builder()
                .mid(mid)
                .mpassword(bcriptMpw)
                .mname(mname)
                .memail(memail)
                .build();

        memberMapper.signUpMember(member);

    }


}
