<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../includes/exAheader.jsp" %>

<style>
    .module-icon {
        width: 50px;
        height: 50px;

        border-radius: 50%;
        font-size: 4px;
        text-align: center;
        line-height: normal;

        background-position: center;
        background-size: contain;

        border: 1px solid #fff;
        box-shadow: 0 0 8px rgb(221, 221, 221);
    }

    .module-icon-1 {
        background-image: url("/resources/images/categoryIcons/PTicon.png");
    }

    .module-icon-2 {
        background-image: url("/resources/images/categoryIcons/losingweight.png");
    }

    .module-icon-3 {
        background-image: url("/resources/images/categoryIcons/rehab.png");
    }

    .module-icon-4 {
        background-image: url("/resources/images/categoryIcons/dieticon.png");
    }

    .module-icon-5 {
        background-image: url("/resources/images/categoryIcons/below18.png");
    }

    .module-icon-6 {
        background-image: url("/resources/images/categoryIcons/bodyprofile.png");
    }

    .module-icon-7 {
        background-image: url("/resources/images/categoryIcons/남자 아이콘.png");
    }

    .module-icon-8 {
        background-image: url("/resources/images/categoryIcons/여자 아이콘.png");
    }

    .category-layout {
        display: grid;
        align-items: center;

        justify-items: stretch;
        grid-template-rows: repeat(auto-fit, 1fr);
        grid-template-columns: repeat(21, 1fr);
        grid-gap: 10px;
        height: 55px;
        width: 100%;
    }

    .category-layout:first-child {
        width: 15%;
        background-color: #0c84ff;
    }

    .category-layout:last-child {
        width: 100%;

    }


    /*.category-item1{grid-column: 7; grid-row: auto;}*/
    /*.category-item2{grid-column: 8;grid-row: auto;}*/
    /*.category-item3{grid-column: 9;grid-row: auto;}*/
    /*.category-item4{grid-column: 10;grid-row: auto;}*/
    /*.category-item5{grid-column: 11;grid-row: auto;}*/
    /*.category-item6{grid-column: 12;grid-row: auto;}*/
    /*.category-item7{grid-column: 13;grid-row: auto;}*/
    /*.category-item8{grid-column: 14;grid-row: auto;}*/

    .category-item-char {
        display: inline-block;
        font-size: 6px;
        width: auto;
        text-align: center;
        border: 3px;
    }


</style>
<!-- Site wrapper -->
<div class="wrapper col-10" style="margin: auto; margin-top: 15px">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="margin: auto">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Auction List</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">입찰중</a></li>
                            <li class="breadcrumb-item active">경매</li>
                        </ol>
                    </div>
                </div>
                <div class="card text-center">
                    <div class="card-body">
                        <div class="row">
                            <div class="category-item1 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('근성장')">
                                    <div class="module-icon module-icon-1"></div>
                                </a>
                                <div class="category-item-char">
                                    근성장
                                </div>
                            </div>
                            <div class="category-item2 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('컷팅')">
                                    <div class="module-icon module-icon-2"></div>
                                </a>
                                <div class="category-item-char">컷팅</div>
                            </div>
                            <div class="category-item3 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('재활')">
                                    <div class="module-icon module-icon-3"></div>
                                </a>
                                <div class="category-item-char">재활</div>
                            </div>
                            <div class="category-item4 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('식단')">
                                    <div class="module-icon module-icon-4"></div>
                                </a>
                                <div class="category-item-char">식단</div>
                            </div>
                            <div class="category-item5 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('청소년')">
                                    <div class="module-icon module-icon-5"></div>
                                </a>
                                <div class="category-item-char">청소년</div>
                            </div>
                            <div class="category-item6 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('바디프로필')">
                                    <div class="module-icon module-icon-6"></div>
                                </a>
                                <div class="category-item-char">바디프로필</div>
                            </div>
                            <div class="category-item7 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('남자')">
                                    <div class="module-icon module-icon-7"></div>
                                </a>
                                <div class="category-item-char">남자</div>
                            </div>
                            <div class="category-item8 col-2 col-sm-2 col-md-1 d-flex align-items-center flex-column flex-row">
                                <a class="" href="javascript:setCategory('여자')">
                                    <div class="module-icon module-icon-8"></div>
                                </a>
                                <div class="category-item-char">여자</div>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </div>
            </div>
        </section>


        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card card-solid">
                <div class="card-body pb-0" style="margin-top: 3px">
                    <div class="row" >

                        <c:forEach items="${dtoList}" var="dto">
                            <div class="col-12 col-sm-6 col-md-3 d-flex align-items-stretch flex-column">
                                <div class="card bg-light d-flex flex-fill">
                                    <div class="card-header text-muted border-bottom-0">
                                        경매번호 :
                                            <c:out value="${dto.ano}"/>
                                    </div>
                                    <div class="card-body pt-0" style="margin-top: 5px">
                                        <div class="row">
                                            <div class="col-7">
                                                <h4 class="lead"><i class="fas fa-map-marked-alt"></i>
                                                    <c:out value="${fn:split(dto.location,' ')[0]}"/></h4>
                                                    <p><c:out value="${fn:split(dto.location,' ')[1]}"/>
                                                    <c:out value="${fn:split(dto.location,' ')[2]}"/></p>
                                                <p class="text-muted text-sm"><i class="fas fa-check"></i>
                                                    <c:out value="${dto.membership}"/>회권
                                                </p>
                                                <ul class="ml-4 mb-0 fa-ul text-muted" style="font-size: 12px !important;">

                                                    <li class="small"><span class="fa-li"><i
                                                            class="far fa-id-card"></i></span>
                                                        <c:set var="age" value="${dto.age}"/>
                                                        <c:choose>
                                                            <c:when test="${age >= 18}">
                                                                성인
                                                            </c:when>
                                                            <c:when test="${age <= 18}">
                                                                청소년
                                                            </c:when>
                                                            <c:when test="${age >= 60}">
                                                                실버
                                                            </c:when>
                                                        </c:choose>
                                                    </li>
                                                    <li class="small"><span class="fa-li"><i
                                                            class="fas fa-restroom"></i></span>
                                                        <c:set var="sex" value="${dto.sex}"/>
                                                        <c:choose>
                                                        <c:when test="${sex == 0}">
                                                            여자
                                                        </c:when>
                                                        <c:when test="${sex != 0}">
                                                            남자
                                                        </c:when>
                                                        </c:choose>
                                                    </li>
                                                    <c:forTokens var="it" items="${dto.programs}" delims="'|'">

                                                    <li class="small"><span class="fa-li"><i
                                                            class="fas fa-tasks"></i></span>
                                                        ${it}

                                                    </li>

                                                    </c:forTokens>
<%--                                                    <li class="small"><span class="fa-li"><i--%>
<%--                                                            class="fas fa-utensils"></i></span>--%>
<%--                                                        <c:out value="${fn:split(dto.programs,'|')[0]}"/>--%>
<%--                                                    </li>--%>
                                                </ul>
                                            </div>
                                            <div class="col-5 text-center" style="margin-top: 3px">

                                                <img src="/resources/images/categoryIcons/${dto.state?'종결.png':'경매중.png'}" alt="user-avatar"
                                                     class="img-circle img-fluid">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <div class="text-right">
                                            <a href="#" class="btn btn-sm bg-teal">
                                                <i class="fas fa-comments"></i> 현재 입찰자수 : <c:out value="${dto.bidcount}"/>
                                            </a>
                                            <a href="javascript:moveRead(${dto.ano})" class="btn btn-sm btn-primary">
                                                <i class="fas fa-user"></i> 입찰하기
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>

                    </div>
                </div>
                <!-- 밑에 페이징 -->

                <form id="actionForm" action="/auction/list" method="get">
                    <input type="hidden" name="page" value="1">
                    <input type="hidden" name="size" value="8">

                </form>

                <form id="categoryForm" action="/auction/list" method="get">
                    <input type="hidden" name="menu" value="">
                </form>

                <div class="btn justify-content-end" style="margin: auto; text-align: right" >
                    <sec:authorize access="isAuthenticated()">
                        <button type="button" class="btn btn-block btn-outline-primary toRegisterBtn">글쓰기</button>
                    </sec:authorize>
                </div>


                <div class="card-footer clearfix">

                    <c:out value="${PageMaker}"/>

                    <!-- pagination -->
                    <div class="pagination pagination-sm m-0 justify-content-center">

                        <c:if test="${pageMaker.prev}">
                            <li class="page-item"><a class="page-link" href="javascript:movePage(${pageMaker.start - 1})"> << </a></li>
                        </c:if>

                        <c:forEach begin="${pageMaker.start}" end="${pageMaker.end}" var="num">
                            <li class="page-item ${pageMaker.page == num?'active':''}">
                                <a class="page-link" href="javascript:movePage(${num})">${num}</a></li>
                        </c:forEach>

                        <c:if test="${pageMaker.next}">
                            <li class="page-item"><a class="page-link" href="javascript:movePage(${pageMaker.end + 1})"> >> </a></li>
                        </c:if>

                    </div>
                </div>
                <!-- /.card-footer -->

            </div>
            <!-- /.card -->

        </section>
        <!-- /.content -->

    </div>
    <!-- /.content-wrapper -->
</div>
</div>
<!-- ./wrapper -->

<%--<form id="actionForm" action="/auction/list" method="get">--%>
<%--    <input type="hidden" name="page" value="${pageMaker.page}">--%>
<%--    <input type="hidden" name="size" value="${pageMaker.size}">--%>

<%--    <c:if test="${auctionPageRequestDTO.type != null}">--%>
<%--        <input type="hidden" name="type" value="${auctionPageRequestDTO.type}">--%>
<%--        <input type="hidden" name="keyword" value="${auctionPageRequestDTO.keyword}">--%>
<%--    </c:if>--%>
<%--</form>--%>

<%@include file="../includes/exAfooter.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>

    const actionForm = document.querySelector("#actionForm")

    const categoryForm = document.querySelector(".menus")

    function movePage(pageNum) {
        // event.preventDefault()
        // event.stopPropagation()

        actionForm.querySelector("input[name='page']").setAttribute("value",pageNum)

        actionForm.submit();
    }

    function setCategory(menu){
        categoryForm.querySelector("input[name='menu']").setAttribute("value", menu)
        categoryForm.submit();

    }

    function moveRead(ano) {

        actionForm.setAttribute("action","/auction/read")
        actionForm.innerHTML += `<input type='hidden' name='ano' value='\${ano}'>`
        actionForm.submit();
    }

    document.querySelector(".toRegisterBtn").addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        actionForm.setAttribute("action", "/auction/register")
        actionForm.submit();

    })
</script>

</body>
</html>
