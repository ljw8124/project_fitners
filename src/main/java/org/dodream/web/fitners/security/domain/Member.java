package org.dodream.web.fitners.security.domain;

import lombok.*;
import org.dodream.web.fitners.security.dto.MemberDTO;

import java.sql.Timestamp;
import java.util.List;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Member {

    private String mid;
    private String mpassword;
    private String mname;
    private String memail;
    private Timestamp regDate;
    private Timestamp modDate;
    private boolean disabled;

    private List<MemberRole> roleList;

}


