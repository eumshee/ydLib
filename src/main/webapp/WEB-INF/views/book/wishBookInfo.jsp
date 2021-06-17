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
				<h1 class="text-white font-weight-bold">희망도서 신청</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>희망도서 신청 안내</strong></span>
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
							<li><a href="bookSerchForm.do">통합자료검색</a></li>
							<li><a href="newBook.do">신착자료</a></li>
							<li><a href="bestBook.do">대출 베스트</a></li>
							<li class="sideactive"><a href="wishBookInfo.do">희망도서 신청</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-book">&nbsp;</span><span class="half-highlight">희망도서 신청안내</span>
					</h3>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; <b>신청권수</b> : 회원 1명당 월 최대 1권까지 신청 가능<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; <b>신청장소</b> : 홈페이지 신청 및 도서관 방문 신청<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; <b>대상자료</b> : 도서관에서 소장 중이지 않은 국내 단행본 도서<br>
					<span class="icon-keyboard_arrow_right"></span>&nbsp; <b>세부사항</b>
					<ul>
						<li>비치알림
							<ul>
								<li>홈페이지 공지사항 게시 및 문자통보 (회원가입 시 입력한 번호로 문자통보됩니다. 확인해주세요 <a href="userPage.do">내정보보기</a>)</li>
								<li>문자통보 받은 날부터 3일간 우선 대출권 부여</li>
								<li>단, 희망도서 비치일에 연체 중이거나 대출정지 중인 경우, 우선대출이 되지 않아 다른 이용자가 먼저 대출 가능</li>
							</ul> 
						</li>
						<li>선정 제외 기준
							<ul>
								<li>도서관 소장자료, 구입·정리 중인 자료, 품절·절판된 자료, 서지사항이 불명확한 자료</li>
								<li>국외서(원서), 정기간행물, 전자자료, 시청각자료</li>
								<li>출판된 지 3년 이상 된 자료 (당해 연도 포함) 단, 컴퓨터 ·과학·여행 분야는 2년 이상 된 자료</li>
								<li>권당 고가자료 (5만원 이상)</li>
								<li>3권 이상의 시리즈, 전집류</li>
								<li>만화(만화형식 포함), 판타지,무협,로맨스,인터넷 소설 등</li>
								<li>청소년 정서함양에 부적합한 선정성 및 폭력성을 띤 자료</li>
								<li>신판이 출시된 구판 자료</li>
								<li>대학교재, 문제집, 수험서, 참고서, 교과서, 워크북, 라이팅북, 팝업북, 악보집, 참고도서(백과사전,사전류 등)</li>
								<li>특정 출판사, 저자, 종교, 단체 관련 자료를 집중적으로 신청한 경우</li>
								<li>희귀자료, 기관발간물(비매품) 등 정상적인 유통경로로 구입이 어려운 자료</li>
								<li>기타 도서관 소장자료로 부적합 하다고 판단되는 자료</li>
								<li>희망도서 선정에서 제외된 도서 중 필요하다고 판단되는 경우는 정기수서 때 구입할 수도 있음</li>
							</ul> 
						</li>
					</ul>
					<p>
						<a href="wishBook.do" class="btn btn-primary btn-md mt-4">희망도서 신청하기</a>
					</p>
					<h4>원하는 책의 정보를 잘 모르시겠나요?_?</h4> 
					<a href ="https://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=Book&SearchWord=&x=7&y=11">인터넷 서점 바로가기</a> 
				</div>
			</div>
		</div>
	</div>
</section>