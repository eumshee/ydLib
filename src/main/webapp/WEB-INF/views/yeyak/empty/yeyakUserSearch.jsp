<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 상단배너 -->

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12" align="center">
			<br>
			<h1 class="text-black font-weight-bold">회원목록</h1>
		</div>
	</div>
	
	<!-- 유저검색테이블 -->
	<section class="site-section">
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable"
						style="width: 100%; cellspacing: 0">
						<thead>
							<tr>
								<th>아이디</th>
								<th>이름</th>
								<th>회원</th>
							</tr>
						</thead>
						<tfoot>
						</tfoot>
						<tbody>
							<c:forEach items="${userList }" var="vo">
								<tr>
									<td>${vo.user_Id }</td>
									<td>${vo.user_Name }</td>
									<td>${vo.user_Gubun }</td>
								</tr>
							</c:forEach>
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