package org.dodream.web.fitners.security.dto;

import lombok.*;
import org.dodream.web.fitners.security.domain.Member;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Collection;
import java.util.stream.Collectors;

@Getter
@Setter
public class MemberDTO extends User {

    private String mid;
    private String mpassword;
    private String mname;
    private String memail;
    private String role;
    private Timestamp regDate;
    private Timestamp modDate;
    private boolean disabled;

    public MemberDTO(Member member) {
        super(member.getMid(),
                member.getMpassword(),
                member.getRoleList().stream().map(memberRole ->
                        new SimpleGrantedAuthority(memberRole.getRole())).collect(Collectors.toList()) );
        this.mid = member.getMid();
        this.mpassword = member.getMpassword();
        this.mname = member.getMname();
        this.memail = member.getMemail();
        this.regDate = member.getRegDate();
        this.modDate = member.getModDate();
        this.disabled = member.isDisabled();
    }

    public MemberDTO(String username, String mpassword, Collection<? extends GrantedAuthority> authorities) {
        super(username, mpassword, authorities);
    }

}
