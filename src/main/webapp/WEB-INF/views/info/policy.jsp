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
					<span class="icon-keyboard_arrow_right"></span>&nbsp;<b>정회원</b> : 도서관 홈페이지에서 회원 가입 후 도서관 데스크에서 신분증 확인후 정회원 전환 가능합니다.<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;<b>준회원</b> : 도서관 홈페이지에서 가입을 마친 회원 , 대출/예약/희망도서 신청이 불가능합니다.<br>
				</div>
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-book">&nbsp;</span><span class="half-highlight">대출 안내</span>
					</h3>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 1인당 10권 15일간(대출일 포함, 연장 불가)<br>
				</div>
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-book">&nbsp;</span><span class="half-highlight">예약 안내</span>
					</h3>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 도서 1권당 최대 1명까지 예약 가능<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; 회원 1명당 최대 1권까지 예약 가능<br>
				</div>
				<div class="mb-5">
					<h5 class="h5 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-calendar">&nbsp;</span><span class="half-highlight">정기휴관일</span>
					</h5>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;매주 월요일 및 법정공휴일<br><br>
					<h5 class="h5 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-calendar">&nbsp;</span><span class="half-highlight">임시휴관일</span>
					</h5>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;자료정리∙점검 및 시설물 보수∙정비 등을 위한 날<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;도서관 및 기타 사정으로 도서관장이 지정한 날<br><br>
				<div class="mb-5">
					<h4 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-inbox">&nbsp;</span><span class="half-highlight">무인 도서 반납기</span>
					</h4>
						<span class="icon-keyboard_arrow_right"></span>&nbsp;24시 운영, 무인 도서 반닙기에서 반납된 시간을 기준으로 반납 처리<br>
						<span class="icon-keyboard_arrow_right"></span>&nbsp;<span style="color: red">연체 도서의 경우 무인반납기로 반납되지 않습니다.</span><br>
				</div>
			</div>
			</div>
		</div>
	</div>
</section>