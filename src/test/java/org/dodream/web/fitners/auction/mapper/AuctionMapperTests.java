package org.dodream.web.fitners.auction.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.auction.domain.Program;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.security.domain.Member;
import org.dodream.web.fitners.security.domain.MemberPhysical;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {AuctionRootConfig.class, RootConfig.class})
public class AuctionMapperTests {

    @Autowired
    AuctionMapper auctionMapper;

    @Test
    public void selectAuctionTest() {
        log.warn(auctionMapper.selectAuction(1L));
    }

    @Test
    public void selectProgramTest() {
        auctionMapper.selectProgram();
    }

    @Test
    public void insertAuctionTest() {
        Auction testAuctin = Auction.builder()
                .location("서울시 양천구 목동")
                .mid("ljw8124")
                .price(30000)
                .membership(40)
                .title("목동역 인근 PT쌤 찾습니다")
                .build();
        auctionMapper.insertAuction(testAuctin);
    }

    @Test
    public void insertAuctionCategory() {

        Program program = Program.builder()
                .ano(1L)
                .module("재활")
                .detail("일자목 교정")
                .build();

        auctionMapper.insertAuctionCategory(program);
    }

    @Test
    public void insertProgram() {
        Program program = Program.builder()
                .module("PT")
                .detail("등 중점 운동")
                .build();

        auctionMapper.insertProgram(program);
    }

    @Test
    public void insertMemberPhysical() {
        MemberPhysical memberPhysical = MemberPhysical.builder()
                .mid("stealdragon425")
                .height(183)
                .weight(97)
                .sex(true)
                .diseases("관절염, 허리디스크")
                .build();

        auctionMapper.insertMemberPhysical(memberPhysical);
    }

    @Test
    public void getProgramListTest() {
        auctionMapper.getProgramList();
    }




}
