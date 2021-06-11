<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
function formSubmit(id) {
	frm.notice_Id.value = id;
	console.log(id);
	frm.submit();
}
</script>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('images/hero_1.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">공지사항</h1>
				<div class="custom-breadcrumbs">
					<a href="#">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>열린공간</strong></span>
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
							<li class="sideactive"><a href="#">공지사항</a></li>
							<li><a href="#">묻고답하기</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<div align="right">
					<a href="noticeInsertForm.do"><button type="submit"
							class="btn btn-primary text-white btn-search">글쓰기</button></a><br>
					<br>
				</div>
				<form id="frm" action="noticeSelect.do" method="post">
					<input type="hidden" id="notice_Id" name="notice_Id">
				</form>
				<table class="table">
					<tr>
						<th>순번</th>
						<th width="50%">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<c:forEach var="vo" items="${notice }">
						<tr onclick="formSubmit(${vo.notice_Id})">
							<td>${vo.notice_Id }</td>
							<td>${vo.notice_Title }</td>
							<td>관리자</td>
							<td>${vo.notice_Date }</td>
							<td>${vo.notice_Hit }</td>
						</tr>
					</c:forEach>
				</table>
				<!-- 페이징처리 -->
				<div class="col-lg-12 text-center" align="center">
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

				<!-- 검색 -->
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