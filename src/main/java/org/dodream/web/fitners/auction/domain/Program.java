package org.dodream.web.fitners.auction.domain;

import lombok.*;
import org.dodream.web.fitners.auction.dto.ProgramDTO;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Program {

    private Long ano;
    private String module;
    private String detail;

    public ProgramDTO getDTO() {
        ProgramDTO programDTO = ProgramDTO.builder()
                .ano(ano)
                .module(module)
                .detail(detail)
                .build();
        return programDTO;
    }

}
