
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="WEB-INF/views/includes/acutionheader.jsp"%>

<div class="wrapper">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="margin: auto">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>경매장</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">경매</a></li>
                            <li class="breadcrumb-item active">입찰</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-3">
                    <a href="compose.html" class="btn btn-primary btn-block mb-3">입찰하기</a>

                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">경매 현황</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <ul class="nav nav-pills flex-column">
                                <li class="nav-item active">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-inbox"></i> 경매 목록
                                        <span class="badge bg-primary float-right"><code> 입찰 중 </code>12건</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-envelope"></i> 내가 입찰한 경매
                                        <span class="badge bg-warning float-right">5</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-file-alt"></i> 낙찰 받은 경매 목록
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-filter"></i> 낙찰 실패 경매 목록

                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">분류로 보기</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <ul class="nav nav-pills flex-column">
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle text-danger"></i>
                                        지역별
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle text-warning"></i> 성별
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle text-primary"></i>
                                        종목별
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
                <div class="col-md-9">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">경매 목록</h3>

                            <div class="card-tools">
                                <div class="input-group input-group-sm">
                                    <input type="text" class="form-control" placeholder="지역 회원 찾기">
                                    <div class="input-group-append">
                                        <div class="btn btn-primary">
                                            <i class="fas fa-search"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-tools -->
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body p-0">
                            <div class="mailbox-controls">

                                <!-- /.btn-group -->
                                <button type="button" class="btn btn-default btn-sm">
                                    <i class="fas fa-sync-alt"></i>
                                </button>
                                <div class="float-right">
                                    현재 입찰 진행 중인 경매 목록만 표시됩니다.
                                    <!-- /.btn-group -->
                                </div>
                                <!-- /.float-right -->
                            </div>

                            <div class="table-responsive mailbox-messages">
                                <div class="col-12" id="accordion">
                                    <div class="card card-primary card-outline">
                                        <a class="d-block w-100" data-toggle="collapse" href="#collapseOne">
                                            <div class="card-header">
                                                <h4 class="card-title w-100">
                                                    <div class="card">
                                                        <div class="card-header">
                                                            <h3 class="card-title"> <code>경매 번호:</code> ano <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                                <label class="btn btn-secondary active">
                                                                    <input type="radio" name="options"  autocomplete="off" checked> 식단관리
                                                                </label>
                                                                <label class="btn btn-secondary">
                                                                    <input type="radio" name="options"  autocomplete="off"> 체형교정
                                                                </label>
                                                                <label class="btn btn-secondary">
                                                                    <input type="radio" name="options"  autocomplete="off"> 재활
                                                                </label>
                                                            </div>
                                                            </h3>
                                                        </div>

                                                        <!-- /.card-body -->
                                                    </div>
                                                </h4>
                                            </div>
                                        </a>
                                        <div id="collapseOne" class="collapse" data-parent="#accordion">
                                            <div class="card-body">
                                                <div class="card-body table-responsive pad">
                                                    <p class="mb-1">회원님이 원하는 <code>프로그램 구성은</code></p>
                                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                        <label class="btn btn-secondary active">
                                                            <input type="radio" name="options" id="option_a1" autocomplete="off" checked> 식단관리
                                                        </label>
                                                        <label class="btn btn-secondary">
                                                            <input type="radio" name="options" id="option_a2" autocomplete="off"> 체형교정
                                                        </label>
                                                        <label class="btn btn-secondary">
                                                            <input type="radio" name="options" id="option_a3" autocomplete="off"> 재활
                                                        </label>
                                                    </div>

                                                    <p class="mt-3 mb-1">기타 주요 정보<code> 추가사항 입니다.</code></p>
                                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                        <label class="btn bg-olive active">
                                                            <input type="radio" name="options" id="option_b1" autocomplete="off" checked> 성별:여성
                                                        </label>
                                                        <label class="btn bg-olive">
                                                            <input type="radio" name="options" id="option_b2" autocomplete="off"> 위치:종각
                                                        </label>
                                                        <label class="btn bg-olive">
                                                            <input type="radio" name="options" id="option_b3" autocomplete="off"> 시간:오후 7시
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card card-warning card-outline">
                                        <a class="d-block w-100" data-toggle="collapse" href="#collapseTwo">
                                            <div class="card-header">
                                                <h4 class="card-title w-100">
                                                    <div class="card">
                                                        <div class="card-header">
                                                            <h3 class="card-title"> <code>경매 번호:</code> ano <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                                <label class="btn btn-secondary active">
                                                                    <input type="radio" name="options"  autocomplete="off" checked> 식단관리
                                                                </label>
                                                                <label class="btn btn-secondary">
                                                                    <input type="radio" name="options"  autocomplete="off"> 체형교정
                                                                </label>
                                                                <label class="btn btn-secondary">
                                                                    <input type="radio" name="options"  autocomplete="off"> 재활
                                                                </label>
                                                            </div>
                                                            </h3>
                                                        </div>

                                                        <!-- /.card-body -->
                                                    </div>
                                                </h4>
                                            </div>
                                        </a>
                                        <div id="collapseTwo" class="collapse" data-parent="#accordion">

                                            <div class="card-body">
                                                <div class="card-body table-responsive pad">
                                                    <p class="mb-1">회원님이 원하는 <code>프로그램 구성은</code></p>
                                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                        <label class="btn btn-secondary active">
                                                            <input type="radio" name="options" class="option_a1" autocomplete="off" checked> 식단관리
                                                        </label>
                                                        <label class="btn btn-secondary">
                                                            <input type="radio" name="options" class="option_a2" autocomplete="off"> 체형교정
                                                        </label>
                                                        <label class="btn btn-secondary">
                                                            <input type="radio" name="options" class="option_a3" autocomplete="off"> 재활
                                                        </label>
                                                    </div>

                                                    <p class="mt-3 mb-1">기타 주요 정보<code> 추가사항 입니다.</code></p>
                                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                        <label class="btn bg-olive active">
                                                            <input type="radio" name="options" class="option_b1" autocomplete="off" checked> 성별:여성
                                                        </label>
                                                        <label class="btn bg-olive">
                                                            <input type="radio" name="options" class="option_b2" autocomplete="off"> 위치:종각
                                                        </label>
                                                        <label class="btn bg-olive">
                                                            <input type="radio" name="options" class="option_b3" autocomplete="off"> 시간:오후 7시
                                                        </label>
                                                    </div>

                                                    <div class="bidlist">
                                                        <!-- Widget: user widget style 2 -->
                                                        <div class="card card-widget widget-user-2">
                                                            <!-- Add the bg color to the header using any of the bg-* classes -->
                                                            <div class="bidding">
                                                                <div class="bid-icon">
                                                                <div class="widget-user-image">
                                                                    <img class="img-circle elevation-1" src="resources/img/kuki.jpg" alt="bid status">
                                                                </div>
                                                                </div>
                                                                <!-- /.widget-user-image -->
                                                                <div class="bid-time">
                                                                <h4>경매 종료 02시간14분 남음</h4>
                                                                </div>

                                                            </div>
                                                            <div class="card-footer p-0">
                                                                <ul class="nav flex-column">
                                                                    <li class="nav-item">
                                                                        <a href="#" class="nav-link">
                                                                            현재입찰자 <span class="float-right badge bg-primary">31명</span>
                                                                        </a>
                                                                    </li>

                                                                    <li class="nav-item">
                                                                        <a href="#" class="nav-link">
                                                                            입찰하기 <span class="float-right badge bg-success">등록</span>
                                                                        </a>
                                                                    </li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <!-- /.widget-user -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="card card-danger card-outline">
                                        <a class="d-block w-100" data-toggle="collapse" href="#collapseThree">
                                            <div class="card-header">
                                                <h4 class="card-title w-100">
                                                    테스트용
                                                </h4>
                                            </div>
                                        </a>
                                        <div id="collapseThree" class="collapse" data-parent="#accordion">
                                            <div class="card-body">
                                                색이 변함
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                                <!-- /.table -->
                            </div>
                            <!-- /.mail-box-messages -->
                        </div>
                        <!-- /.card-body -->

                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->

            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->
<%@include file="WEB-INF/views/includes/footer.jsp"%>

<!-- jQuery -->
<script src="/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<!-- Page specific script -->

</body>
</html>
