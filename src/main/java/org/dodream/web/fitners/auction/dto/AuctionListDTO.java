package org.dodream.web.fitners.auction.dto;

import lombok.*;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AuctionListDTO {
    private Long ano;
    private String location;
    private int membership;
    private String mid;
    private String programs;
    private int sex;
    private int age;
    private int bidcount;
    private int state;


}
