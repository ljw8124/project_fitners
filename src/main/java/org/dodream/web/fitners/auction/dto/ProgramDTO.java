package org.dodream.web.fitners.auction.dto;

import lombok.*;
import org.dodream.web.fitners.auction.domain.Program;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProgramDTO {

    private Long ano;
    private String module;
    private String detail;

    public Program getDomain() {
        Program program = Program.builder()
                .ano(ano)
                .module(module)
                .detail(detail)
                .build();
        return program;
    }
}
