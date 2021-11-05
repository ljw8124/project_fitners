package org.dodream.web.fitners.auction.domain;


import lombok.*;

import org.dodream.web.fitners.auction.dto.TrainerDTO;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Trainer {

    private String tid;
    private String tpw;
    private String temail;
    private String tname;
    private boolean auth;
    private Timestamp regDate;
    private Timestamp modDate;
    private int bidhistory;
    private int disabled;

//    @Builder.Default
//    List<Trainer> trainerList = new ArrayList<>();

    public TrainerDTO getDTO() {
        TrainerDTO trainerDTO = TrainerDTO.builder()
                .tid(tid)
                .tpw(tpw)
                .temail(temail)
                .tname(tname)
                .auth(auth)
                .regDate(regDate)
                .modDate(modDate)
                .bidhistory(bidhistory)
                .disabled(disabled)
                .build();

        return trainerDTO;
    }

}
