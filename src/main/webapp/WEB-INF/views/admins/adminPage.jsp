<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
 .col-md-12 a {
 	font-size: 1em;
 	color: lightgray;
 	text-decoration: none;
 }
 .col-md-12 a:hover { color: white; }
</style>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">관리자페이지</h1>
			</div>
			<div class="col-md-12" align="center">
				<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><a href="adminPage.do">관리자 홈</a></span>
			</div>
		</div>
	</div>
</section>

<section class="site-section services-section bg-light block__62849"
	id="next-section">
	<div class="container-fluid" style="width:80%;">
		<div class="row">

			<div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<a href="memberManagemant.do"
					class="block__16443 text-center d-block"> <span
					class="custom-icon mx-auto"><span class="icon-users d-block"></span></span>
					<h2>회원목록 관리</h2>
				</a>
			</div>

			<div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<a href="loanreManagemant.do"
					class="block__16443 text-center d-block"> <span
					class="custom-icon mx-auto"><span class="icon-vcard d-block"></span></span>
					<h2>대출/반납 관리</h2>
				</a>
			</div>

			<div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<a href="yeyakmanagemant.do"
					class="block__16443 text-center d-block"> <span
					class="custom-icon mx-auto"><span
						class="icon-bookmark d-block"></span></span>
					<h2>예약도서 관리</h2>
				</a>
			</div>

			<div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<a href="wishManagement.do" class="block__16443 text-center d-block"> <span
					class="custom-icon mx-auto"><span
						class="icon-collections_bookmark d-block"></span></span>
					<h2>희망도서 관리</h2>
				</a>

			</div>
			<div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

				<a href="bookManagement.do" class="block__16443 text-center d-block">
					<span class="custom-icon mx-auto"><span
						class="icon-list d-block"></span></span>
					<h2>장서관리</h2>
				</a>
			</div>

			<div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
				<a href="home.do" class="block__16443 text-center d-block"> <span
					class="custom-icon mx-auto"><span class="icon-reply-all d-block"></span></span>
					<h2>홈으로</h2>
				</a>
			</div>
		</div>
	</div>
</section>