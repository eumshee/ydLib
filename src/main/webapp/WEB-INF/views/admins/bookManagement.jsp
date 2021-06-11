<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
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
<script>
		function formSubmit(num) {
			frm.book_Num.value = num;
			frm.submit();
		}
</script>
<form id="frm" action="bookDetailManage.do" method="post">
	<input type="text" id="book_Num" name="book_Num">
</form>

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
				<div align="right">
					<button type="submit" class="btn btn-primary text-white btn-search"
					onclick="location.href='bookInputManage.do'">
					<span class="icon-plus mx-auto"></span>&nbsp;등록
					</button>
					<button type="submit" class="btn btn-primary text-white btn-search"
					onclick="location.href='bookDetailManage.do'">
					<span class="icon-search-plus mx-auto"></span>&nbsp;상세
					</button>
					<br>
					<br>
				</div>
				<table class="table">
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>책제목</th>
						<th>저자</th>
						<th>출판사</th>
						<th>출판일</th>
						<th>입고일</th>
						<th>위치</th>
						<th>비고</th>
					</tr>
					
					<c:forEach items="${bookMgList }" var="vo">
						<tr>
							<td onclick="formSubmit(${vo.book_Num })">${vo.book_Num }</td>
							<td onclick="formSubmit(${vo.book_Num })">${vo.book_Gubun }</td>
							<td onclick="formSubmit(${vo.book_Num })">${vo.book_Title }</td>
							<td onclick="formSubmit(${vo.book_Num })">${vo.book_Aut }</td>
							<td onclick="formSubmit(${vo.book_Num })">${vo.book_Pub }</td>
							<td onclick="formSubmit(${vo.book_Num })">${fn:substring(vo.book_Pubdate,0,10) }</td>
							<td onclick="formSubmit(${vo.book_Num })">${fn:substring(vo.book_Indate,0,10) }</td>
							<td onclick="formSubmit(${vo.book_Num })">${vo.book_Location }</td>
							<td>
								<select id="bookStatus">
									<option hidden="" selected></option>
									<option value="분실">분실</option>
									<option value="훼손">훼손</option>
								</select>
								<button type="button">수정</button>
							</td>
						</tr>
					</c:forEach>
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