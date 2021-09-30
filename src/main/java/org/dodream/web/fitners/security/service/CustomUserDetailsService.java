package org.dodream.web.fitners.security.service;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.security.domain.Member;
import org.dodream.web.fitners.security.dto.MemberDTO;
import org.dodream.web.fitners.security.dto.MemberPhysicalDTO;
import org.dodream.web.fitners.security.mapper.MemberMapper;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Log4j2
@RequiredArgsConstructor
@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final MemberMapper memberMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.warn("==========================customUserDetailsService====================================");
        log.warn("==========================customUserDetailsService====================================");
        log.warn("==========================customUserDetailsService====================================");
        log.warn(username);
        log.warn(memberMapper);
        log.warn("==========================customUserDetailsService====================================");
        log.warn("==========================customUserDetailsService====================================");
        log.warn("==========================customUserDetailsService====================================");

        Member member = memberMapper.findByMid(username);

        if (member == null) {
            throw new UsernameNotFoundException("NOT EXIST");
        }

        User result = new MemberDTO(member);

        return result;
    }

}
