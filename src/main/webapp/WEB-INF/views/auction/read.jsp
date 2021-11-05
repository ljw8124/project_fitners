<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/includes/exAheader.jsp" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- ======================================================== -->
<html>

<body>
<style>
    a {
        color: white;
    }
    .trainerinput{
        background-color:transparent;
        border:0 solid black;
        text-align:right;
        text-align:center;
        display:block;
        margin: 0 auto
    }

</style>

<!-- Content Wrapper. Contains page content -->

<section class="content">
    <div class="content-wrapper col-10" style="margin: auto; margin-top: 15px; min-height: unset">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-9">
                        <h1><b>Auction Bid</b></h1>
                        <div style="font-size: 11pt"><b> ${auctionDTO.mid}</b> <span
                                style="font-size: 8pt">글작성시간 :${auctionDTO.regDate}</span>
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card card-solid">
                <div class="card-body">
                    <div class="row">
                        <div class="col-11 col-sm-6">
                            <!-- About Me Box -->
                            <div class="card card">
                                <div class="card-header">
                                    <h3 class="card-title">Information</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <strong><i class="fas fa-user mr-1"></i> 성별</strong>
                                    <p class="text-muted">
                                        ${memberDTO.sex ? '남자' : '여자'}
                                    </p>

                                    <hr>

                                    <strong><i class="fas fa-map-marker-alt mr-1"></i> 위치</strong>

                                    <p class="text-muted">${auctionDTO.location}</p>

                                    <hr>

                                    <strong><i class="fas fa-pencil-alt mr-1"></i>키/몸무게/질병</strong>

                                    <p class="text-muted">
                                        <span class="tag tag-danger">${memberDTO.height}cm</span>
                                        <span class="tag tag-success">${memberDTO.weight}kg</span>
                                        <span class="tag tag-info">${memberDTO.diseases}</span>
                                    </p>

                                    <hr>

                                    <strong><i class="far fa-file-alt mr-1"></i> 희망 횟수</strong>

                                    <p class="text-muted">총 ${auctionDTO.membership}회</p>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <div class="col-12 col-sm-6">
                            <h4 class="my-3 text-center"><b>${auctionDTO.title}</b></h4>
                            <hr>
                            <!-- Table row -->
                            <table class="table-striped col-8 text-center" style="margin: auto; flex: auto">
                                <thead>
                                <tr>
                                    <th>Module</th>
                                    <th>Detail</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${auctionDTO.programDTOList}" var="program">
                                    <tr>
                                        <td>${program.module}</td>
                                        <td>${program.detail}</td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <hr>

                            <div class="bg-gradient-secondary py-2 px-3 mt-4">
                                <h6 class="mt-0">
                                    <small>회원 희망 금액(1회 기준) :</small>
                                </h6>
                                <h6 class="mb-0">
                                    <i class="fas fa-won-sign fa-lg mr-2"></i><span
                                        style="font-size: 22pt">${auctionDTO.price}</span>
                                    원
                                </h6>
                            </div>

                            <div class="mt-4">
                                <div class="btn btn-primary btn-lg btn-flat toListBtn">
                                    <a href="/auction/list">
                                        <i class="fas fa-file-alt fa-lg mr-2"></i>
                                        목록으로
                                    </a>
                                </div>

                                <div class="btn btn-outline-secondary btn-lg btn-flat toModalBtn">
                                    <i class="fas fa-check fa-lg mr-2"></i>
                                    입찰하기
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!---------------------------------------------------------------------------------------------->

            <div class="col-12" style="margin: auto; margin-top: 30px;">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">입찰 목록</h3>

                        <div class="card-tools">
                            <div class="input-group input-group-sm">
                            </div>
                        </div>
                        <!-- /.card-tools -->
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">
                        <div class="mailbox-controls">
                            <!-- /.float-right -->
                            <div class="table-responsive mailbox-messages">
                                <table class="table table-hover table-striped">
                                    <tbody>
                                    <tr>
                                        <td class="mailbox-name"><b>트레이너 이름</b></td>
                                        <td class="mailbox-subject"><b>제시 금액 : 금액 작성</b>
                                        </td>
                                        <td class="mailbox-date"><small>날짜</small></td>

                                        <td class="justify-content-center">

                                        </td>

                                        <td>

                                        </td>
                                    </tr>
                                    <%--${biddingList}--%>
                                    </tbody>
                                </table>
                                <!-- /.table -->
                            </div>
                            <!-- /.mail-box-messages -->
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer p-0">

                    </div>
                </div>
                <!-- /.card -->
            </div>

            <!-- /.col -->


            <!----------------------------------------------------------------------------------------------------------------->

        </section>

        <!-- /.content -->
    </div>
</section>

<%--<!----------------------------------------------------------------------------------------------------------------->--%>
<%-- modal start --%>
<div class="modal fade" id="modal-sm1">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body justify-content-between">

                <div class="card">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <img class="profile-user-img img-fluid img-circle"
                                 src="/resources/images/hcs.jfif"
                                 alt="User profile picture">
                        </div>

                        <input type="hidden" name="bidno">
                        <h3 class="profile-username text-center" ><input type="text" name="tname" class="trainerinput"></h3>
                        <ul class="list-group list-group-unbordered mb-3">
                            <li class="list-group-item">
                                <b>제시 금액</b> <a class="float-right"><input type="text" name="price" class="trainerinput" style="text-align: right"></a>
                            </li>
                            <li class="list-group-item">
                                <b>매칭 횟수</b> <a class="float-right">34회</a>
                            </li>
                            <li class="list-group-item">
                                <b>좋아요</b> <a class="float-right">13,287</a>
                            </li>
                        </ul>

                        <h3 class="text-center">약력</h3>
                        <p class="text-center"><input type="text" name="awardname" class="trainerinput"></p>

                    </div>
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right;">종료
                </button>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal exd-->

</div>
<!-- /.card-body -->
<%-- modal start --%>
<div class="modal fade" id="modal-oper">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title">낙찰하시겠습니까?</h4>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal"><a href="/auction/list" style="text-decoration-line: none">낙찰</a></button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal exd-->

<%--    <!-------------------------------------------------------------------------------------------------->--%>
<div class="modal fade" id="modal-sm">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-body justify-content-between">

                <div class="card">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <img class="profile-user-img img-responsive"
                                 src="/resources/images/sample.jpg"
                                 alt="User profile picture">
                        </div>

                        <h3 class="profile-username text-center">${auctionDTO.mid}</h3>
                        <p class="text-muted text-center"></p>

                        <ul class="list-group list-group-unbordered mb-3">
                            <li class="list-group-item">
                                <b>회원 제시금액</b> <a class="float-right">${auctionDTO.price}원</a>
                            </li>

                        </ul>
                        <p><b>제안금액</b> : <input type="text" class="trainerBiddingMoney"></p>
                    </div>
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">종료</button>
                <button type="button" class="btn btn-primary operBtn" style="float: right">입찰</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- ======================================================== -->
<%@include file="/WEB-INF/views/includes/exAfooter.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="/resources/dist/js/bidding.js"></script>


<script>


    const bidModal = $("#modal-sm")
    document.querySelector(".toModalBtn").addEventListener("click", function () {

        bidModal.modal('show')
    }, false)



    const operModal = $('#modal-oper')
    document.querySelector('.mailbox-controls').addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        const target = e.target

        if(target.matches(".acceptBid"))

            operModal.modal('show')
    })

    //-----------------------------------------------------------------------------
    function getList(){
        const ano = '${auctionDTO.ano}' //현재 게시글의 번호
        const target = document.querySelector(".mailbox-controls")


        function convertTemp(biddingObj){
            if(!biddingObj.bidno){
                return "입찰자가 없습니다"
            } else {
                const {ano, bidno, tid, tname, price, readDate, awardname} = {...biddingObj}

                const temp = ` <div class="table-responsive mailbox-messages">
                            <table class="table table-hover table-striped">

                                <tbody>
                                        <tr>
                                            <td class="mailbox-name"><b>\${tname}</b></td>
                                            <td class="mailbox-subject"><b>제시 금액 : \${price}</b>
                                            </td>
                                            <td class="mailbox-date"><small>\${readDate}</small></td>

                                              <td>
                                                <button type="button" class="btn btn-outline-success Awardbtn justify-content-center" data-bidno='\${bidno}' data-tname='\${tname}' data-price='\${price}' data-awardname='\${awardname}'>
                                                    트레이너 정보
                                                </button>
                                            </td>

                                            <td>
                                                <button type="button" class="btn btn-dark justify-content-center acceptBid">
                                                    낙찰
                                                </button>
                                            </td>
                                        </tr>
                               </tbody>

                            </table>
                            <!-- /.table -->
                        </div>`

                return temp
            }

        }

        getBiddingList(ano).then(data =>{
            console.log(data) // array
            let str ="";
            data.forEach(bidding => {
                str += convertTemp(bidding)
            })

                target.innerHTML = str


        })
    }

    //최초 실행  즉시실행함수
    (function() {
        getList()
    })()

    const trainerModal = $("#modal-sm1")
    const trBidno = document.querySelector("input[name='bidno']")
    const trTname = document.querySelector("input[name='tname']")
    const trPrice = document.querySelector("input[name='price']")
    const trAwardname = document.querySelector("input[name='awardname']")

    document.querySelector(".mailbox-controls").addEventListener("click", function (e) {

        const target = e.target
        console.log(target)

        if(target.matches(".Awardbtn")){

            const bidno = target.getAttribute("data-bidno")
            const tname = target.getAttribute("data-tname")
            const price = target.getAttribute("data-price")
            const awardname = target.getAttribute("data-awardname")
            console.log(bidno, tname, price, awardname)

            trBidno.value = bidno
            trTname.value = tname
            trPrice.value = price
            trAwardname.value = awardname

            trainerModal.modal('show')
        }

    },false)

    document.querySelector(".acceptBid").addEventListener("click", (evt => {
        alert("낙찰되었습니다")
    }))

</script>


</body>
</html>
