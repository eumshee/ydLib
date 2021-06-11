<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

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
					<form action="bookSerch.do" method="get">
						<input type="text" id="book_Title" name="book_Title" placeholder="도서 제목을 입력하세요">
						<br> 
						저자 : <input type="text" id="book_Aut" name="book_Aut">
						<br> 
						출판사 : <input type="text" id="book_Pub" name="book_Pub">
						<br>
						<input type="submit" value="검색">
					</form>
					<ul class="job-listings mb-5">
						<c:forEach items="${bookSerchList }" var="book">
							<li	class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
								<a href="book.do?$book_Id=${book.book_Num }"></a>
								<div class="job-listing-logo">
									<img src="${book.book_Img }" alt="Image" class="img-fluid">
								</div>
								<div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
									<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
										<h2>${book.book_Title }</h2>
										<strong>${book.book_Aut }</strong>
									</div>
									<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
										${book.book_Location }
									</div>
									<div class="job-listing-meta">
										<c:if test="${book.book_Byn eq 'n' }">
											<span class="badge badge-danger">대출불가</span>
										</c:if>
										<c:if test="${book.book_Byn eq 'y' }">
											<span class="badge badge-success">대출가능</span>
										</c:if>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>



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
						<button type="submit"
							class="btn btn-primary text-white btn-search">
							<span class="icon-search icon mr-2"></span>검색
						</button>
					</div>

				</div>
			</div>
		</div>
	</section>




</body>
</html>