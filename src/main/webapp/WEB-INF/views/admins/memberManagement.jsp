<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.site-section>.container {
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: 10%;
	margin-left: 5%;
	max-width: 1800px;
}
</style>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('images/hero_1.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">회원 관리</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>회원 관리</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 상단배너 end -->


<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-3" style="max-width:20%;">
				<div class="rounded">
					<div class="sidenav">
						<ul class="list-unstyled">
							<li class="sideactive"><a href="#">회원관리</a></li>
							<li><a href="#">대출반납 관리</a></li>
							<li><a href="#">예약도서 관리</a></li>
							<li><a href="#">희망도서 관리</a></li>
							<li><a href="#">장서 관리</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<table class="table">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>성별</th>
						<th>생일</th>
						<th>전화번호</th>
						<th width="25%">주소</th>
						<th>회원등급</th>
						<th>대출정지</th>
						<th>삭제</th>
					</tr>
					<tr>
						<td>test id</td>
						<td>test name</td>
						<td>남</td>
						<td>1999-01-31</td>
						<td>010-1111-1111</td>
						<td>(13536)경기 성남시 분당구 판교역로 4 경기 성남시 분당구 백현동 582-7어느 한적한곳 (백현동)</td>
						<td>준회원</td>
						<td>2021-10-10</td>
						<td><button type="button">삭제</button></td>
					</tr>
					<tr>
						<td>2</td>
						<td>글제목</td>
						<td>접수</td>
						<td>김김밥</td>
						<td>김김밥</td>
						<td>2021-06-10</td>
						<td>1</td>
						<td>2</td>
					</tr>
				</table>
				<!-- 페이징처리 -->
				<div class="col-lg-12 text-center">
					<jsp:include page="../common/paging.jsp" flush="true">
						<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
						<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
						<jsp:param name="startPageNo" value="${paging.startPageNo}" />
						<jsp:param name="pageNo" value="${paging.pageNo}" />
						<jsp:param name="endPageNo" value="${paging.endPageNo}" />
						<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
						<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
					</jsp:include>
				</div>
				<p>
					<a href="#" class="btn btn-primary btn-md mt-4">Hire Us, Our Agency</a>
				</p>
			</div>
		</div>
	</div>
</section>