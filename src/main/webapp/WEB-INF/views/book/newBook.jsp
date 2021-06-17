<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.pagination {
  display: inline-block;
}
.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
}

.pagination a.active {
  background-color: #89ba16;
  color: white;
  border: 1px solid #89ba16;
}

.pagination a:hover:not(.active) {background-color: #ddd;}
.main1 .search-box {width:750px;margin-top:38px;}
.main1 .search-box fieldset{position:relative;overflow:hidden;}
.main1 .search-box legend {background:#89BA16;color:#fff;}
.main1 .search-box input {border:0;background:#fff;width:100%;padding:10px;padding-left:18px;font-size:20px;color:#000;}
.main1 .search-box input:focus{outline:none}
.main1 .search-box input,

.main1 .search-box .main-box {width:100%;border:5px solid #89BA16;overflow:hidden;}
.main1 .search-box .main-box .title-box {position:absolute;left:0;background:#89BA16;color:#fff;font-size:18px;padding:13px 0;width:150px;text-align:center;}

.label {
	display: inline-block;
	width: 300px;
	height: 40px;
	font-weight: bold;
	margin-right: 30px;
}

.sorting { height: 30px; padding: 3px;}
.sorting .left { width: 80%; float: left; }
.sorting .right { width: 20%; float: right; }
</style>
<script type="text/javascript">
	function order() {
		var order = $('#orderSelect').val();
		console.log(order);
		serchFrm.book_Order.value = order;
		serchFrm.submit();
	}
	function bookInfo(Isbn) {
		ifrm.book_Isbn.value=Isbn;
		ifrm.submit();
	}
</script>
<script type="text/javascript">
	function goPage(page) {
		location.href="newBook.do?page="+page;
	}
</script>
</head>
<body>
	<!-- 상단배너 -->
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/main.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">신착 도서</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="site-section block__18514" id="next-section">
		<div class="container">
			<div class="row">
				<!-- sideBar -->
				<div class="col-lg-3 mr-3">
					<div class="rounded">
						<div class="sidenav">
							<ul class="list-unstyled">
								<li><a href="bookSerchForm.do">통합자료검색</a></li>
								<li class="sideactive"><a href="newBook.do">신착자료</a></li>
								<li><a href="bestBook.do">대출 베스트</a></li>
								<li><a href="wishBookInfo.do">희망도서 신청</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--컨텐츠 영역-->
				<div class="col-lg-8">
					<h2>신착 도서는 한달 이내에 입고된 도서들 입니다.</h2>
					<form action="bookInfo.do" id="ifrm">
						<input type="hidden" id="book_Isbn" name="book_Isbn">
						<ul class="job-listings mb-5">
							<c:forEach items="${newBookList }" var="book">
								<li	class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
									<a onclick="bookInfo(${book.book_Isbn})"></a>
									<div class="job-listing-logo">
										<img src="${book.book_Img }" alt="Image" class="img-fluid" width="100%">
									</div>
									<div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
										<div class="job-listing-position custom-width w-60 mb-3 mb-sm-0" style="max-width:80%;">
												<h5><b>${book.book_Title }</b></h5>
												<h6>저자 : ${book.book_Aut }</h6>
												<h6>출판사 : ${book.book_Pub }</h6>
												<h6>주제 :
												<c:choose>
													<c:when test="${book.book_Subject eq '0'}">총류</c:when>
													<c:when test="${book.book_Subject eq '1'}">철학</c:when>
													<c:when test="${book.book_Subject eq '2'}">종교</c:when>
													<c:when test="${book.book_Subject eq '3'}">사회과학</c:when>
													<c:when test="${book.book_Subject eq '4'}">자연과학</c:when>
													<c:when test="${book.book_Subject eq '5'}">기술과학</c:when>
													<c:when test="${book.book_Subject eq '6'}">예술</c:when>
													<c:when test="${book.book_Subject eq '7'}">언어</c:when>
													<c:when test="${book.book_Subject eq '8'}">문학</c:when>
													<c:otherwise>역사</c:otherwise>
												</c:choose>
												</h6>
												<h6>위치 : ${book.book_Location }번서가</h6>
												<h6>수량 : ${book.all_Book_Cnt }권</h6>
											</div>
										<div class="job-listing-meta">
												<c:if test="${book.can_Book_Cnt <= 0 }">
													<span class="badge badge-danger" style="font-size: 15px;">대출불가</span>
												</c:if>
												<c:if test="${book.can_Book_Cnt > 0 }">
													<span class="badge badge-success" style="font-size: 15px;">대출가능</span>
												</c:if>
											</div>
									</div>
								</li>
							</c:forEach>
						</ul>
						</form>
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
</body>
</html>