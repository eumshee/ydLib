<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.label {
	display: inline-block;
	width: 300px;
	height: 40px;
	font-weight: bold;
	margin-right: 30px;
}

.sorting { height: 30px; padding: 3px;}
.sorting .left { width: 75%; float: left; }
.sorting .right { width: 25%; float: right; }

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function bookInfo(Isbn) {
		ifrm.book_Isbn.value=Isbn;
		ifrm.submit();
	}
	function subject() {
		var subject = $('#subjectSelect').val();
		subjectFrm.book_Subject.value = subject;
		subjectFrm.submit();
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
					<h1 class="text-white font-weight-bold">대출 베스트</h1>
						<div class="custom-breadcrumbs">
							<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>자료이용</strong></span>
						</div>					
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
								<li><a href="newBook.do">신착자료</a></li>
								<li class="sideactive"><a href="bestBook.do">대출 베스트</a></li>
								<li><a href="wishBookInfo.do">희망도서 신청</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--컨텐츠 영역-->
				<div class="col-lg-8">
					<form action="subjectBestBook.do" id="subjectFrm">
						<input type="hidden" name="book_Subject" id="book_Subject">
					</form>
					<div class="sorting">
						<div class="left"><b>도서관 대출 상위 10개입니다.</b></div>
						<div class="right">
							주제별 : 
							<select id="subjectSelect" name="subjectSelect" >
	  							<option value="0">총류</option>
	  							<option value="1">철학</option>
	  							<option value="2">종교</option>
	  							<option value="3">사회과학</option>
	  							<option value="4">자연과학</option>
	  							<option value="5">기술과학</option>
	  							<option value="6">예술</option>
	  							<option value="7">언어</option>
	  							<option value="8">문학</option>
	  							<option value="9">역사</option>
							</select>
							<button class="btn btn-light" onclick="subject()">검색</button>
						</div>
					</div>
					<hr>
					<div>
					<form action="bookInfo.do" id="ifrm">
						<input type="hidden" id="book_Isbn" name="book_Isbn">
						<ul class="job-listings mb-5">
							<c:forEach items="${bestBookTop10 }" var="book">
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
				</div>
			</div>
		</div>
		</div>
	</section>
</body>
</html>