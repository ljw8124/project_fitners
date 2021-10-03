package org.dodream.web.fitners.security.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.dodream.web.fitners.security.domain.MemberPhysical;

import java.sql.Timestamp;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemberPhysicalDTO {

    private String mid;
    private int height;
    private int weight;
    private int age;
    private boolean sex;
    private String diseases;
    private Timestamp regDate;
    private Timestamp modDate;

    public MemberPhysical getDomain() {
        MemberPhysical memberPhysical = MemberPhysical.builder()
                .mid(mid)
                .height(height)
                .weight(weight)
                .age(age)
                .sex(sex)
                .diseases(diseases)
                .regDate(regDate)
                .modDate(modDate)
                .build();
        return memberPhysical;
    }

}
