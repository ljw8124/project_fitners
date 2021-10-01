package org.dodream.web.fitners.security.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.security.dto.SignInMemberDTO;
import org.dodream.web.fitners.security.service.SignInMemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/signin")
@RequiredArgsConstructor
public class SignInMemberController {

    private final SignInMemberService signInMemberService;

    @PostMapping("")
    public String singInMember(SignInMemberDTO signInMemberDTO) {
        log.warn("=====================sign in start=================");
        signInMemberService.SignInMember(signInMemberDTO);
        log.warn("======================sign in success========================");
        return "redirect:/customLogin";
    }
}
