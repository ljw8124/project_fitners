package org.dodream.web.fitners.security.mapper;

import org.dodream.web.fitners.security.domain.Member;
import org.dodream.web.fitners.security.domain.MemberPhysical;

public interface MemberMapper {

    Member findByMid(String mid);
}
