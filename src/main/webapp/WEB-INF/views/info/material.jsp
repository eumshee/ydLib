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
				<h1 class="text-white font-weight-bold">자료현황</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>자료현황</strong></span>
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
							<li><a href="policy.do">도서대출/반납</a></li>
							<li class="sideactive"><a href="material.do">자료현황</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->

			<div class="col-lg-8">
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-book">&nbsp;</span><span class="half-highlight">도서현황</span>
					</h3>
				</div>
				<div class="mb-5">
					<h5 class="h5 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-circle-thin">&nbsp;</span><span class="half-highlight">주제별 도서 보유현황</span>
					</h5>
				</div>
				<div class="mb-5">
					<table class="table">
						<tr>
							<th>총류</th>
							<th>철학</th>
							<th>종교</th>
							<th>사회과학</th>
							<th>자연과학</th>
							<th>기술과학</th>
							<th>예술</th>
							<th>언어</th>
							<th>문학</th>
							<th>역사</th>
							<th>합계</th>
						</tr>
						<tr>
							<c:set var="total" value="0"/>
							<c:forEach items="${mList }" var="vo">
								
								<td>${vo.book_Num }</td>
								<c:set var="total" value="${total + vo.book_Num }"/>
							</c:forEach>
							<td><c:out value="${total}"/></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>