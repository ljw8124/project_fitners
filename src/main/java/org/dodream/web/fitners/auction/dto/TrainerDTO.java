package org.dodream.web.fitners.auction.dto;

import lombok.*;

import org.dodream.web.fitners.auction.domain.Trainer;
import java.sql.Timestamp;


@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TrainerDTO {



    private String tid;
    private String tpw;
    private String temail;
    private String tname;
    private boolean auth;
    private Timestamp regDate;
    private Timestamp modDate;
    private int bidhistory;
    private int disabled;


    //dto를 vo로 변환
    public Trainer getDomain() {
        Trainer trainer = Trainer.builder()
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

        return trainer;
    }

}
