<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.half-highlight {
	font-weight: 600;
	color: #343a40;
}
	
</style>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">대출/반납</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>이용안내</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<!-- 왼쪽네비 -->
			<div class="col-lg-3 mr-3">
				<div class="rounded">
					<div class="sidenav">
						<ul class="list-unstyled">
							<li><a href="map.do">찾아오시는 길</a></li>
							<li><a href="opening.do">이용시간/휴관일</a></li>
							<li class="sideactive"><a href="policy.do">도서대출/반납</a></li>
							<li><a href="material.do">자료현황</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->

			<div class="col-lg-8">
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-book">&nbsp;</span><span class="half-highlight">회원 안내</span>
					</h3>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;<b>정회원</b> : 홈페이지 회원에 한해서 도서관 데스크에서 신분증 확인을 거쳐 정회원으로 전환 가능합니다.<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;<b>준회원</b> : 홈페이지 회원가입을 했으나 신분증 확인을 거치지 않은 자. 대출/예약/희망도서 신청이 불가능합니다.<br>
				</div>
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-book">&nbsp;</span><span class="half-highlight">대출 안내</span>
					</h3>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 1인당 <b>10권, 15일간</b> 이용 가능합니다.(대출일 포함이며, 연장은 불가능합니다.)<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 도서 연체시 연체된 일 만큼 대출이 정지 됩니다.<br>
				</div>
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-book">&nbsp;</span><span class="half-highlight">예약 안내</span>
					</h3>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 도서 1권당 최대 1명까지 예약 가능<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 회원 1명당 최대 1권까지 예약 가능<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 예약 된 도서가 반납되면 반납된 날을 포함하여 3일간 우선적으로 대출을 하실 수 있습니다.<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 예약만기일 전에 찾아가지 않은 책은 예약이 만료되며 일반서가에 비치됩니다.<br>
				</div>
			</div>
		</div>
	</div>
</section>