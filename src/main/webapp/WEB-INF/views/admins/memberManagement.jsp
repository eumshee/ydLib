<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.pagination {
	display: inline-block;
	margin: auto;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
}

.pagination a.active {
	background-color: lightgray;
	color: #fff;
	border: 1px solid lightgray;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
#name{
width: 80px;
text-align: center;
}

.btn{
	margin-top: 5px;
	border: 1px ridge black;
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
					<a href="adminPage.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>회원 관리</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 상단배너 end -->


<section class="site-section block__18514" id="next-section">
	<div class="container">
		<!-- 검색창 -->
		<form action="" method="post">
			<div align="right">
				<input type="text" id="search" name="search" placeholder="검색할 이름을 입력하세요." size="30">
				<button type="submit" class="btn btn-primary text-white btn-search">
					<span class="icon-search icon mr-2"></span>검색
				</button>
			</div>
		</form>
		<form id="frm" action="" method="post">
			<input type="hidden" id="user_id" name="user_id" value="">
			<input type="hidden" id="user_name" name="user_name" value="">
		</form>
		<div class="row">
			<!--컨텐츠 영역-->
			<div class="col-lg-12">
				<table class="table">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>성별</th>
						<th>생년월일</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>E-mail</th>
						<th>회원등급</th>
						<th>비고</th>
					</tr>
					<tr>
						<td>longtestid</td>
						<td><input type="text" id="inputname" name="inputname" value="세글자"></td>
						<td>남자</td>
						<td>2020-10-10</td>
						<td>010-1111-1111</td>
						<td width="20%">(13536)경기 성남시 분당구 판교역로 4 경기 성남시 분당구 백현동 582-7어느 한적한곳 (백현동)</td>
						<td>testemail@naver.com</td>
						<td>정회원</td>
						<td><button class="btn" type="button">수정</button><br>
						<button class="btn" type="button">삭제</button></td>
						
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
					<a href="#" class="btn btn-primary btn-md mt-4">큰버튼</a>
				</p>
			</div>
		</div>
	</div>
</section>