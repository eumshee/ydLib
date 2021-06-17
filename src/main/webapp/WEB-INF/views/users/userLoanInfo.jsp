<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>

tr:hover {
	background-color: #F8F8F8;	
}
</style>

<script>

function formSubmit(Isbn) {
	frm.book_Isbn.value=Isbn;
	frm.submit();
}
</script>

<style>
@font-face {
	font-family: 'S-CoreDream-3Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff') !important;
	font-weight: normal;
	font-style: normal;
}

</style>

<!-- 상단배너 -->
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/hero_1.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">대출내역 조회</h1>
					<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>대출내역 조회</strong></span>
				</div>
				</div>
			</div>
		</div>
	</section>
	<section class="site-section block__18514" id="next-section">
		<div class="container">
			<div class="row">
				<!-- sideBar -->
				<div class="col-lg-3 mr-3">
					<div class="rounded">
						<div class="sidenav">
							<ul class="list-unstyled">
								<li class="sideactive"><a href="userLoan.do">대출내역조회</a></li>
								<li><a href="userYeyak.do">예약현황</a></li>
								<li><a href="userWish.do">희망도서 신청현황</a></li>
								<li ><a href="userPage.do">내정보 수정</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<form id="frm" action="bookInfo.do" method="post">
				<input type="hidden" id="book_Isbn" name="book_Isbn">
				<!-- DataTales Example -->
						
				<table class="table table-bordered"
					style="width: 100%; cellspacing: 0">
					
						<tr>
							<th width= "60px">순번</th>
							<th>책제목</th>
							<th>저자</th>
							<th>대출일</th>
							<th>반납기한</th>
							<th width= "60px">상태</th>
						</tr>
						
						<c:choose>
						
						<c:when test="${userLoanList.isEmpty() }">
						<tr>
						<td colspan="7">
						<div style="height:'300px'; width:'100%'; align:'center'">
						<h6>도서대출내역이 없습니다.</h6>
						</div>
						</td>
						</tr>
						</c:when>
						
						<c:when test="${!userLoanList.isEmpty()}">
				
						<c:forEach var="loan" items="${userLoanList }" varStatus="status">
							
							<tr onclick="formSubmit(${loan.book_Isbn})" >
								<td>${status.count }</td>
								<td>${loan.book_Title }</td>
								<td>${loan.book_Aut }</td>
								<td>${loan.loan_Date }</td>
								<td>${loan.return_Duedate }</td>
								<td>${loan.loan_Status }</td>
							</tr>
							
						</c:forEach>
						</c:when>
						</c:choose>
				</table>
				
				</form>
				</div>
			</div>
		</div>
</section>