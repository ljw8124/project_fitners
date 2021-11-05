package org.dodream.web.fitners.auction.dto;

import lombok.*;
import org.dodream.web.fitners.auction.domain.TrainerAward;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TrainerAwardDTO {

    private String tid;
    private Timestamp winDate;
    private String awardname;
    private String photoname;
    private String uuid;
    private String path;
    private String state;

    public TrainerAward getDomain() {
        TrainerAward trainerAward = TrainerAward.builder()
                .tid(tid)
                .winDate(winDate)
                .awardname(awardname)
                .photoname(photoname)
                .uuid(uuid)
                .path(path)
                .state(state)
                .build();

        return trainerAward;
    }

}
