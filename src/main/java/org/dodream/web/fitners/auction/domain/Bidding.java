package org.dodream.web.fitners.auction.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.dodream.web.fitners.auction.dto.BiddingDTO;

import java.time.LocalDateTime;


@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Bidding {

    private Long ano;
    private Long bidno;
    private String tid;
    private String tname;
    private Long price;
    private LocalDateTime readDate;
    private String awardname;

}
