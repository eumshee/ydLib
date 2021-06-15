<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
    <link rel="stylesheet" href="resources/css/custom-bs.css">
    <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="resources/fonts/line-icons/style.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<link rel="stylesheet" href="resources/vendor/datatables/dataTables.bootstrap4.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="resources/css/style.css">   

</head>
<style>
th, td {
	vertical-align: middle !important;
	text-align: center;
}
</style>
<script>
	function bkDetail(num,isbn) {
		var url= 'bookDetailManage.do?book_Num='+num+"&book_Isbn="+isbn;
		var winWidth = 700;
	    var winHeight = 600;
	    var popupOption= "width="+winWidth+", height="+winHeight;
		window.open(url,"",popupOption);
	}
</script>
<!-- 상단배너 -->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12" align="center">
			<br>
			<h1 class="text-black font-weight-bold">예약여부 확인</h1>
		</div>
	</div>


	<!-- 도서입력폼 -->
	<section class="site-section">
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable"
						style="width: 100%; cellspacing: 0">
						<thead>
							<tr>
								<th>예약순서</th>
								<th>책번호</th>
								<th>신청자</th>
								<th>예약신청일</th>
								<th>예약시작일</th>
								<th>예약만료일</th>
								<th>예약상태</th>
							</tr>
						</thead>
						<tfoot>
						</tfoot>
						<tbody>
							<c:if test="${!empty yeyakUser}">
								<tr>
									<td>${yeyakUser.yeyak_Num }</td>
									<td
										onclick="bkDetail(${yeyakUser.book_Num },'${yeyakUser.book_Isbn }')">${yeyakUser.book_Num }</td>
									<td>${yeyakUser.user_Id }</td>
									<td>${fn:substring(yeyakUser.yeyak_Submit,0,10) }</td>
									<td>${fn:substring(yeyakUser.yeyak_Start,0,10) }</td>
									<td>${fn:substring(yeyakUser.yeyak_End,0,10) }</td>
									<td>${yeyakUser.yeyak_Processing}</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
</div>
  <!-- SCRIPTS -->
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/isotope.pkgd.min.js"></script>
    <script src="resources/js/stickyfill.min.js"></script>
    <script src="resources/js/jquery.fancybox.min.js"></script>
    <script src="resources/js/jquery.easing.1.3.js"></script>
    
    <script src="resources/js/jquery.waypoints.min.js"></script>
    <script src="resources/js/jquery.animateNumber.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    
    <script src="resources/js/bootstrap-select.min.js"></script>
    
    <script src="resources/js/custom.js"></script>

    <script src="resources/js/default-new.js"></script>

	<!-- DATATABLES PLUGINS -->
	<script src="resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="resources/vendor/datatables/datatables-demo.js"></script>