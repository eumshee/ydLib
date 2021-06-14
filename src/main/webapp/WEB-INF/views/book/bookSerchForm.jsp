<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function order() {
		var order = $('#orderSelect').val();
		console.log(order);
		serchFrm.book_Order.value = order;
		serchFrm.submit();
	}
	function bookInfo(num) {
		ifrm.book_Num.value=num;
		ifrm.submit();
	}
</script>
</head>
<body>
	<!-- 상단배너 -->
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/hero_1.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">통합검색</h1>
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
					<form action="bookSerch.do" method="get" id="serchFrm">
						<input type="hidden" id="book_Order" name="book_Order">
						<input type="text" id="book_Title" name="book_Title" placeholder="도서 제목을 입력하세요" value="${reqVO.book_Title }">
						<br> 
						저자 : <input type="text" id="book_Aut" name="book_Aut" value="${reqVO.book_Aut }">
						<br> 
						출판사 : <input type="text" id="book_Pub" name="book_Pub" value="${reqVO.book_Pub }">
						<br>
						<input type="submit" value="검색">
					</form>
					<hr>
					<c:if test="${empty bookSerchList}">
							원하는 자료를 검색하세요
					</c:if>
					<c:if test="${!empty bookSerchList}">
						<select id="orderSelect" name="orderSelect">
							<option value="정렬종류">정렬종류</option>
  							<option value="book_title">제목</option>
  							<option value="book_aut">저자</option>
  							<option value="book_location">배가위치</option>
  							<option value="book_subject">주제</option>
						</select>
						<button onclick="order()">정렬</button>
						<form action="bookInfo.do" id="ifrm">
						<input type="hidden" id="book_Num" name="book_Num">
						<ul class="job-listings mb-5">
							<c:forEach items="${bookSerchList }" var="book">
								<li	class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
									<a onclick="bookInfo(${book.book_Num})"></a>
									<div class="job-listing-logo">
										<img src="${book.book_Img }" alt="Image" class="img-fluid" width="100%">
									</div>
									<div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
										<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
											<h2>제목 : ${book.book_Title }</h2>
											<br>
											<h2>저자 : ${book.book_Aut }</h2>
											<br>
											<h2>출판사 : ${book.book_Pub }</h2>  
										</div>
										<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
											${book.book_Location }번서가
										</div>
										<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
											수량 : ${book.all_Book_Cnt }권
										</div>
										<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
										주제 : 
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
											
										</div>
										<div class="job-listing-meta">
											
											<c:if test="${book.can_Book_Cnt <= 0 }">
												<span class="badge badge-danger">대출불가</span>
											</c:if>
											<c:if test="${book.can_Book_Cnt > 0 }">
												<span class="badge badge-success">대출가능</span>
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
					</c:if>
				</div>
			</div>
		</div>
	</section>




</body>
</html>