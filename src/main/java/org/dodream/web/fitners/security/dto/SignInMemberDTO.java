package org.dodream.web.fitners.security.dto;

import lombok.*;
import org.dodream.web.fitners.security.domain.MemberRole;

import java.sql.Timestamp;
import java.util.List;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SignInMemberDTO {

    private String mid;
    private String mpassword;
    private String mname;
    private String memail;
    private Timestamp regDate;
    private Timestamp modDate;
    private boolean disabled;

    private List<MemberRole> roleList;

}