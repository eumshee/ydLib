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
					<h1 class="text-white font-weight-bold">희망도서 신청현황</h1>
					<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>희망도서 신청현황</strong></span>
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
								<li ><a href="userLoan.do">대출내역조회</a></li>
								<li><a href="userYeyak.do">예약현황</a></li>
								<li class="sideactive"><a href="userWish.do">희망도서 신청현황</a></li>
								<li ><a href="userPage.do">내정보 수정</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<form id="frm" action="bookInfo.do" method="post">
				<!-- DataTales Example -->
				<table class="table table-bordered"
					style="width: 100%; cellspacing: 0">
					
						<tr>
							<th width= "60px">순번</th>
							<th>책제목</th>
							<th>ISBN</th>
							<th>저자/출판사</th>
							<th>신청일</th>
							<th width= "70px">상태</th>
							<th>비고</th>
						</tr>
				
						<c:forEach var="wish" items="${userWishList }" varStatus="status">
							
							<tr >
								<td>${status.count }</td>
								<td>${wish.wish_Title }</td>
								<td>${wish.wish_Isbn }</td>
								<td>${wish.wish_Aut } / ${wish.wish_Pub } </td>
								<td>${wish.wish_Date }</td>
								<td>${wish.wish_Processing }</td>
								<!-- 관리자가 작성하는 comment를 비고로 처리  -->
								<td>${wish.wish_Coment }</td>
							</tr>
							
						</c:forEach>
				</table>
				</form>
				</div>
			</div>
		</div>
</section>