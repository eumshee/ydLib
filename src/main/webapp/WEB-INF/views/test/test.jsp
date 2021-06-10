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
</style>


<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/hero_1.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">자료이용</h1>
				<div class="custom-breadcrumbs">
					<a href="#">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>자료이용</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 mr-3">
				<div class="rounded">
					<div class="sidenav">
						<ul class="list-unstyled">
							<li class="sideactive"><a href="#">통합자료검색</a></li>
							<li><a href="#">신착자료</a></li>
							<li><a href="#">대출 베스트</a></li>
							<li><a href="#">희망도서 신청</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<div align="right">
					<button type="submit" class="btn btn-primary text-white btn-search">글쓰기
					</button>
					<br>
					<br>
				</div>
				<table class="table">
					<tr>
						<th>번호</th>
						<th width="50%">제목</th>
						<th>처리</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<tr>
						<td>1</td>
						<td>글제목</td>
						<td>접수</td>
						<td>김김밥</td>
						<td>2021-06-10</td>
						<td>1</td>
					</tr>
					<tr>
						<td>2</td>
						<td>글제목</td>
						<td>접수</td>
						<td>김김밥</td>
						<td>2021-06-10</td>
						<td>1</td>
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

				<!-- 검색창 -->
				<div align="center">
					<input type="text" id="search" name="search"
						placeholder="검색어를 입력하세요" size="30">
					<button type="submit" class="btn btn-primary text-white btn-search">
						<span class="icon-search icon mr-2"></span>검색
					</button>
				</div>
			</div>
		</div>
	</div>
</section>