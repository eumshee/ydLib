<%@page import="java.time.LocalDate"%>
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
		style="background-image: url('resources/images/hero_1.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">예약현황</h1>
					<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>예약현황</strong></span>
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
								<li><a href="userLoan.do">대출내역조회</a></li>
								<li class="sideactive"><a href="userYeyak.do">예약현황</a></li>
								<li><a href="userWish.do">희망도서 신청현황</a></li>
								<li><a href="userPage.do">내정보 수정</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--컨텐츠 영역-->
				<div class="col-lg-8">
					<form action="bookInfo.do" id="ifrm">
						<input type="hidden" id="book_Isbn" name="book_Isbn">
						<ul class="job-listings mb-5">
							<c:forEach items="${userYeyakList }" var="yeyak">
								<br>
								<div>
								<p>예약신청일: ${yeyak.yeyak_Submit }   
								<c:choose>
								<c:when test="${yeyak.yeyak_Start ne null }">
								&nbsp;&nbsp;&nbsp;&nbsp; 예약시작일: ${yeyak.yeyak_Start }
								&nbsp;&nbsp;&nbsp;&nbsp; 예약종료일: ${yeyak.yeyak_End }
								</c:when>
								
								<c:when test="${yeyak.yeyak_Processing eq '예약신청' }">
								&nbsp;&nbsp;&nbsp;&nbsp; <p>상태: 예약신청(예약한 도서가 반납될 시 안내문자가 발송됩니다.)</p> 
								</c:when>
								
								<c:when test="${yeyak.yeyak_Processing eq '예약취소' }">
								&nbsp;&nbsp;&nbsp;&nbsp; <p>상태: 예약취소</p> 
								</c:when>
								
								<c:when test="${yeyak.yeyak_Processing eq '예약만료' }">
								&nbsp;&nbsp;&nbsp;&nbsp; <p>상태: 예약만료(예약도서 대출가능기간동안 대출하지않아 예약이 만료되었습니다.)</p> 
								</c:when>
								
								<c:when test="${yeyak.yeyak_Processing eq '예약중' }">
								&nbsp;&nbsp;&nbsp;&nbsp; <p>상태: 예약승인(예약도서를 대출해주시기 바랍니다.)</p> 
								</c:when>
								
								</c:choose>
								</p>
								</div>
								<li	class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
									<a onclick="bookInfo(${yeyak.book_Isbn})"></a>
									<div class="job-listing-logo">
										<img src="${yeyak.book_Img }" alt="Image" class="img-fluid" width="100%">
									</div>
									<div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
										<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
											<h2>제목 : ${yeyak.book_Title }</h2>
											<br>
											<h2>저자 : ${yeyak.book_Aut }</h2>
											<br>
											<h2>출판사 : ${yeyak.book_Pub }</h2>  
										</div>
										<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
											${yeyak.book_Location }번서가
										</div>
										<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
										주제 : 
											<c:choose>
												<c:when test="${yeyak.book_Subject eq '0'}">총류</c:when>
												<c:when test="${yeyak.book_Subject eq '1'}">철학</c:when>
												<c:when test="${yeyak.book_Subject eq '2'}">종교</c:when>
												<c:when test="${yeyak.book_Subject eq '3'}">사회과학</c:when>
												<c:when test="${yeyak.book_Subject eq '4'}">자연과학</c:when>
												<c:when test="${yeyak.book_Subject eq '5'}">기술과학</c:when>
												<c:when test="${yeyak.book_Subject eq '6'}">예술</c:when>
												<c:when test="${yeyak.book_Subject eq '7'}">언어</c:when>
												<c:when test="${yeyak.book_Subject eq '8'}">문학</c:when>
												<c:otherwise>역사</c:otherwise>
											</c:choose>
											
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>