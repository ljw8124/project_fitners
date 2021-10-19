package org.dodream.web.fitners.auction.domain;


import lombok.*;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AuctionList {
    private Long ano;
    private String location;
    private int membership;
    private String mid;
    private String programs;
    private int sex;
    private int age;
    private int bidcount;
    private boolean state;
}
