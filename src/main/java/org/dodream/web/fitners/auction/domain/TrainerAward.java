package org.dodream.web.fitners.auction.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.dodream.web.fitners.auction.dto.TrainerAwardDTO;

import java.sql.Timestamp;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TrainerAward {

    private String tid;
    private Timestamp winDate;
    private String awardname;
    private String photoname;
    private String uuid;
    private String path;
    private String state;

    public TrainerAwardDTO getDTO() {
        TrainerAwardDTO trainerAwardDTO = TrainerAwardDTO.builder()
                .tid(tid)
                .winDate(winDate)
                .awardname(awardname)
                .photoname(photoname)
                .uuid(uuid)
                .path(path)
                .state(state)
                .build();

        return trainerAwardDTO;
    }
}
