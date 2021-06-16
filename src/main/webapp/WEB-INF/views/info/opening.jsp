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
				<h1 class="text-white font-weight-bold">이용시간/휴관일</h1>
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
							<li class="sideactive"><a href="opening.do">이용시간/휴관일</a></li>
							<li><a href="policy.do">도서대출/반납</a></li>
							<li><a href="material.do">자료현황</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->

			<div class="col-lg-8">
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-clock-o">&nbsp;</span><span class="half-highlight">이용시간</span>
					</h3>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;매주 월-금 오전 9시~오후 6시&nbsp;&nbsp;<span style="background-color: #f1f1f1; padding:15px; border-radius: 0.3em;"><b>코로나19로 단축운영중입니다.</b></span>
				</div>
				<div class="mb-5">
					<h5 class="h5 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-calendar">&nbsp;</span><span class="half-highlight">정기휴관일</span>
					</h5>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;매주 토, 일요일 및 법정공휴일<br><br>
					<h5 class="h5 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-calendar">&nbsp;</span><span class="half-highlight">임시휴관일</span>
					</h5>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;자료정리∙점검 및 시설물 보수∙정비 등을 위한 날<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp;도서관 및 기타 사정으로 도서관장이 지정한 날<br><br>
				<div class="mb-5">
					<h4 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-inbox">&nbsp;</span><span class="half-highlight">도서반납함 운영시간</span>
					</h4>
						<span class="icon-keyboard_arrow_right"></span>&nbsp;평일 : 오후 7시 ~ 익일 오전 9시<br>
						<span class="icon-keyboard_arrow_right"></span>&nbsp;휴관일 : 익일 오전 9시까지&nbsp;&nbsp;<u><b>※ 도서관 운영시간 중에는 반납함 이용이 불가합니다.</b></u><br><br>
				</div>
			</div>
		</div>
		</div>
	</div>
</section>