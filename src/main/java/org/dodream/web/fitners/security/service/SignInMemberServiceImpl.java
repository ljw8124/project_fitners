package org.dodream.web.fitners.security.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.security.domain.Member;
import org.dodream.web.fitners.security.dto.SignInMemberDTO;
import org.dodream.web.fitners.security.mapper.MemberMapper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@Log4j2
@RequiredArgsConstructor
public class SignInMemberServiceImpl implements SignInMemberService{

    private final MemberMapper memberMapper;
    private final PasswordEncoder passwordEncoder;

    @Override
    public void SignInMember(SignInMemberDTO signInMemberDTO) {

        Member member = Member.builder()
                .mid(signInMemberDTO.getMid())
                .mpassword(passwordEncoder.encode(signInMemberDTO.getMpassword()))
                .mname(signInMemberDTO.getMname())
                .memail(signInMemberDTO.getMemail())
                .build();

        memberMapper.signUpMember(member);

    }
}
