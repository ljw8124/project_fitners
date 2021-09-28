
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/includes/selfmanagementheader.jsp" %>

<!-- Table row -->
<div class="row" style="margin-top: 20px">
    <div class="col-10 table-responsive" style="margin: auto">
        <label for="trainermanagement">Trainer Managemnet(날짜를 기준으로 최근에 진행된 10개만 출력)</label>
        <table class="table table-striped" id="trainermanagement">
            <thead>
            <tr>
                <th>번호</th>
                <th>트레이너 이름(아이디)</th>
                <th>선택 관리유형</th>
                <th>관리유형 내용</th>
                <th>남은 PT 횟수</th>
                <th>날짜</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>4</td>
                <td>트레이너이름(트레이너 아이디)</td>
                <td>해당모듈</td>
                <td>모듈에 디테일</td>
                <td>진행한 PT 수 / 남은 PT 수</td>
                <td>PT 진행한 날짜</td>
            </tr>
            <tr>
                <td>3</td>
                <td>트레이너이름(트레이너 아이디)</td>
                <td>해당모듈</td>
                <td>모듈에 디테일</td>
                <td>진행한 PT 수 / 남은 PT 수</td>
                <td>PT 진행한 날짜</td>
            </tr>
            <tr>
                <td>2</td>
                <td>트레이너이름(트레이너 아이디)</td>
                <td>해당모듈</td>
                <td>모듈에 디테일</td>
                <td>진행한 PT 수 / 남은 PT 수</td>
                <td>PT 진행한 날짜</td>
            </tr>
            <tr>
                <td>1</td>
                <td>트레이너이름(트레이너 아이디)</td>
                <td>해당모듈</td>
                <td>모듈에 디테일</td>
                <td>진행한 PT 수 / 남은 PT 수</td>
                <td>PT 진행한 날짜</td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->

<hr>

<!-- Table row -->
<div class="row">
    <div class="col-10 table-responsive" style="margin: auto">
        <label for="selfmanagement">Self Managemnet</label>
        <table class="table table-striped" id="selfmanagement">
            <thead>
            <tr>
                <th>번호</th>
                <th>운동 날짜</th>
                <th>운동 루틴</th>
                <th>해당 detail</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>4</td>
                <td>Call of Duty</td>
                <td>455-981-221</td>
                <td>El snort testosterone trophy driving gloves handsome</td>
                <td>$64.50</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Need for Speed IV</td>
                <td>247-925-726</td>
                <td>Wes Anderson umami biodiesel</td>
                <td>$50.00</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Monsters DVD</td>
                <td>735-845-642</td>
                <td>Terry Richardson helvetica tousled street art master</td>
                <td>$10.70</td>
            </tr>
            <tr>
                <td>1</td>
                <td>Grown Ups Blue Ray</td>
                <td>422-568-642</td>
                <td>Tousled lomo letterpress</td>
                <td>$25.99</td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->





<%@include file="/WEB-INF/views/includes/footer.jsp"%>

</body>
</html>
