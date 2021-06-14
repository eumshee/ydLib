<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	th, td {
		vertical-align: middle !important;
	}
	 .col-md-12 a {
 	font-size: 1em;
 	color: white;
 	text-decoration: none;
 	}
	 .col-md-12 a:hover { color: #89ba16; }
</style>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/hero_1.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">예약도서관리</h1>
			</div>
			<div class="col-md-12" align="center">
				<span><a href="memberManagemant.do">회원목록관리</a></span>&nbsp;&nbsp;
				<span><a href="loanreManagemant.do">대출/반납관리</a></span>&nbsp;&nbsp;
				<span><a href="yeyakmanagemant.do" style="color:#89ba16;">예약도서관리</a></span>&nbsp;&nbsp;
				<span><a href="wishManagement.do">희망도서관리</a></span>&nbsp;&nbsp;
				<span><a href="bookManagement.do">장서관리</a></span>&nbsp;&nbsp;
				<span><a href="home.do">홈</a></span>
			</div>
		</div>
	</div>
</section>

<!-- 책리스트 -->
<section class="site-section block__18514" id="next-section">
	<div class="container-fluid" style="width:80%">
		<div class="row">
			<div class="col-lg-12">
				<div align="right">
					<button type="submit" class="btn btn-primary text-white btn-search"
						onclick="location.href='#'">
						<span class="icon-plus mx-auto"></span>&nbsp;등록
					</button>
					<br> <br>
				</div>
				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">예약도서목록</h6>
					</div>
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
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>예약순서</th>
										<th>책번호</th>
										<th>신청자</th>
										<th>예약신청일</th>
										<th>예약시작일</th>
										<th>예약만료일</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${yeyakList }" var="vo">
										<tr>
											<td>${vo.yeyak_Num }</td>
											<td>${vo.book_Num }</td>
											<td>${vo.user_Id }</td>
											<td>${fn:substring(vo.yeyak_Submit,0,10) }</td>
											<td>${fn:substring(vo.yeyak_Start,0,10) }</td>
											<td>${fn:substring(vo.yeyak_End,0,10) }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

