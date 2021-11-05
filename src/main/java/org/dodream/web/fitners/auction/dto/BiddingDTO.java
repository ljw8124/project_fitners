package org.dodream.web.fitners.auction.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.dodream.web.fitners.auction.domain.Bidding;

import java.time.LocalDateTime;

@Data
@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BiddingDTO {

    private Long ano;
    private Long bidno;
    private String tid;
    private String tname;
    private Long price;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime readDate;
    private String awardname;

    public Bidding getDTO() {
        Bidding bidding = Bidding.builder()
                .ano(ano)
                .bidno(bidno)
                .tid(tid)
                .tname(tname)
                .price(price)
                .readDate(readDate)
                .awardname(awardname)
                .build();

        return bidding;
    }
}
