<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="../includes/auctionheader.jsp" %>

<!-- general form elements disabled -->
<section class="col-8" style="margin: auto; margin-top: 15px">
    <div class="card card-gray">
        <div class="card-header">
            <h3 class="card-title">역경매 게시글 작성</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <form id="auctionRegister" action="/auction/register" method="post">
                <div class="row">
                    <div class="col-sm-6">
                        <!-- text input -->
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" class="form-control" placeholder="제목을 입력하세요" name="title" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>작성자</label>
                            <input type="text" class="form-control" placeholder="Enter ..." name="mid"
                                   value="<sec:authentication property="principal.mid"/>"
                                   readonly required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-1">
                        <div class="form-group">
                            <label>성별</label>
                            <select class="form-control" name="sex">
                                <option value="1">남자</option>
                                <option value="0">여자</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <label>나이</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="ex) 26" name="age" required>
                            <div class="input-group-append">
                                <span class="input-group-text">세</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <label>키</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="ex) 172" name="height" required>
                            <div class="input-group-append">
                                <span class="input-group-text">cm</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <label>몸무게</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="ex) 70" name="weight" required>
                            <div class="input-group-append">
                                <span class="input-group-text">kg</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label>질병</label>
                            <input type="text" class="form-control" name="diseases" placeholder="ex) 관절염, 디스크">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>희망 장소</label>
                            <input type="text" class="form-control" placeholder="ex) 서울시 종로구 관철동" name="location"
                                   required>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <label>희망 횟수</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="ex) 30" name="membership" required>
                            <div class="input-group-append">
                                <span class="input-group-text">회</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- input states -->
                <div class="form-group">
                    <label class="col-form-label" for="wantedPrice"><i class="fas fa-check"></i> 원하는 가격</label>
                    <div class="input-group" id="wantedPrice">
                        <input type="text" name="price" class="form-control is-valid col-3" placeholder="1회당 가격을 입력하세요"
                               required>
                        <div class="input-group-append">
                            <span class="input-group-text">원</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-11">
                        <label><i class="fas fa-check"></i> 원하는 카테고리를 선택하세요</label><br>

                            <div class="col-12" style="margin: auto;">
                                <c:forEach items="${program}" var="program">
                                    <button type="button" class="btn btn-outline-secondary"
                                            style="margin-bottom: 5px">
                                        <input type="checkbox" name="module"
                                               value="${program.module},${program.detail}"> ${program.module}
                                        - ${program.detail}
                                    </button>
                                </c:forEach>
                            </div>

                    </div>

                </div>
                <div class="registerFormFooter">
                    <button type="submit" id="submitBtn" class="btn btn-block btn-outline-primary float-right col-1">
                        작성
                    </button>
                </div>

            </form>
        </div>
        <!-- /.card-body -->
    </div>
</section>
<!-- /.card -->
<!-- general form elements disabled -->

<%@include file="../includes/footer.jsp" %>


</body>
</html>
