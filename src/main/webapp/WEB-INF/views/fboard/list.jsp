
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/fboardheader.jsp" %>
<style>
    a:link {
        color: black;
    }


</style>
<section class="listSection">
    <!-- /.row -->
    <div class="row" style="margin-top: 15px">
        <div class="col-8" style="margin: auto">
            <div class="card card-gray">
                <div class="card-header text-center">
                    <h1 class="card-title">자유게시판</h1>

                </div>
                <!-- /.card-header -->
                <div class="card-body">

                    <!-- Table row -->
                    <div class="row">
                        <div class="col-12 table-responsive">
                            <table class="table table">
                                <thead>
                                <tr>
                                    <th class="bnoTh">번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th>조회수</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${dtoList}" var="dto">
                                    <tr>
                                        <td class="bnoTh"><c:out value="${dto.bno}"/></td>
                                        <td><a href="javascript:moveRead(${dto.bno})"><c:out value="${dto.title}"/></a></td>
                                        <td><c:out value="${dto.writer}"/></td>
                                        <td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${dto.regDate}"/></td>
                                        <td><c:out value="${dto.viewCount}"/></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                    <div class="btn float-right">
                        <sec:authorize access="isAuthenticated()">
                            <button type="button" class="btn btn-block btn-outline-primary toRegisterBtn">글쓰기</button>
                        </sec:authorize>
                    </div>

                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>
    <!-- /.row -->
<div class="col-md-6 offset-md-3" style="margin-bottom: 15px">
    <form action="/fboard/list" method="get" style="margin-top: 15px; text-align: center">
        <input type="hidden" name="page" value="1">
        <input type="hidden" name="size" value="${pageMaker.size}">
            <!-- select -->
            <div class="form-group" style="margin-top: 15px">
                <label value="Search">검색조건</label>
                <select name="type" class="custom-select" style="width: auto">
                    <option value="">---</option>
                    <option value="TCW" ${pageRequestDTO.type == "TCW" ? 'selected' : ''}>전체</option>
                    <option value="T" ${pageRequestDTO.type == "T" ? 'selected' : ''}>제목</option>
                    <option value="TC" ${pageRequestDTO.type == "TC" ? 'selected' : ''}>제목/내용</option>
                    <option value="W" ${pageRequestDTO.type == "W" ? 'selected' : ''}>작성자</option>
                </select>
            </div>
            <div class="input-group">
                <input type="search" class="form-control form-control-lg" name="keyword" value="${pageRequestDTO.keyword}" >
                <span class="input-group-append">
                    <button type="submit" class="btn btn-lg btn-default">search</button>
                </span>
            </div>


    </form>
</div>

</div>



<div class="card-footer clearfix">

    <!-- pagination -->
    <div class="pagination pagination justify-content-center">
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
    <!-- /pagination -->

</div>

</section>

<form id="actionForm" action="/fboard/list" method="get">
    <input type="hidden" name="page" value="${pageMaker.page}">
    <input type="hidden" name="size" value="${pageMaker.size}">

    <c:if test="${pageRequestDTO.type != null}">
        <input type="hidden" name="type" value="${pageRequestDTO.type}">
        <input type="hidden" name="keyword" value="${pageRequestDTO.keyword}">
    </c:if>
</form>

<%@include file="../includes/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>

    const actionForm = document.querySelector("#actionForm")

    const result = '${result}';

    function movePage(pageNum) {
        // event.preventDefault()
        // event.stopPropagation()

        actionForm.querySelector("input[name='page']").setAttribute("value",pageNum)

        actionForm.submit();
    }

    function moveRead(bno) {

        actionForm.setAttribute("action","/fboard/read")
        actionForm.innerHTML += `<input type='hidden' name='bno' value='\${bno}'>`
        actionForm.submit();
    }

    document.querySelector(".toRegisterBtn").addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        actionForm.setAttribute("action", "/fboard/register")
        actionForm.submit();

    })


</script>
</body>
</html>
