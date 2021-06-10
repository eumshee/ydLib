<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/hero_1.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">장서관리</h1>
				<div class="custom-breadcrumbs">
					<a href="adminPage.do">Admin</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>BookManagement</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 책리스트 -->
<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<table class="table">
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>책사진</th>
						<th>책제목</th>
						<th>저자</th>
						<th>출판사</th>
						<th>출판일</th>
						<th>입고일</th>
						<th>위치</th>
						<th>비고</th>
					</tr>
					<tr>
						<td>1</td>
						<td>4</td>
						<td>img</td>
						<td>과학</td>
						<td>김과학</td>
						<td>책책책</td>
						<td>2021/04/10</td>
						<td>2021/06/10</td>
						<td>2구역</td>
						<td>훼손</td>
					</tr>
					<tr>
						<td>2</td>
						<td>6</td>
						<td>예술</td>
						<td>img</td>
						<td>김다빈치</td>
						<td>책책책</td>
						<td>2021/01/30</td>
						<td>2021/04/10</td>
						<td>3구역</td>
						<td></td>
					</tr>
					<tr>
						<td>3</td>
						<td>8</td>
						<td>고전문학</td>
						<td>img</td>
						<td>김문학</td>
						<td>책책책</td>
						<td>2021/03/03</td>
						<td>2021/05/08</td>
						<td>1구역</td>
						<td>분실</td>
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
			</div>
		</div>
	</div>
</section>