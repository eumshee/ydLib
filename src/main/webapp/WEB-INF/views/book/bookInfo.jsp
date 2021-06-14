<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
</head>
<body>
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/hero_1.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">상세정보</h1>
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
					<c:forEach items="${bookDetail }" var="bookInfo" begin="1" end="1">
						<table>
							<tr>
								<td rowspan="6">
									<img src="${bookInfo.book_Img }" alt="Image" width="175px" height="255px">
								</td>
							</tr>
							<tr>
								<td><h2>${bookInfo.book_Title }</h2></td>
							</tr>
							<tr>
								<td>저자 : ${bookInfo.book_Aut }</td>
							</tr>
							<tr>
								<td>발행처/발행날 : ${bookInfo.book_Pub } / ${bookInfo.book_Pubdate }</td>
							</tr>
							<tr>
								<td>ISBN : ${bookInfo.book_Isbn }</td>
							</tr>
							<tr>
								<td>분류기호 : ${bookInfo.book_Gubun }</td>
							</tr>
						</table>
					</c:forEach>
					<br><br>
					<table>
						<tr>
							<td>청구기호</td><td>등록번호</td><td>배가위치</td><td>반납예정일</td><td>대출상태</td>
						</tr>
						<c:forEach items="${bookDetail }" var="bookInfo">
							<tr>
								<td>${bookInfo.book_Gubun  }</td><td>${bookInfo.book_Num }</td><td>${bookInfo.book_Location }</td><td>${bookInfo.return_Duedate }</td>
								<td>
									<div class="job-listing-meta">
										<c:if test="${bookInfo.book_Byn eq 'N' }">
											<span class="badge badge-danger">대출불가</span>
										</c:if>
										<c:if test="${bookInfo.book_Byn eq 'Y' }">
											<span class="badge badge-success">대출가능</span>
										</c:if>
									</div>
								</td>
								<td>
									<c:choose>
										<c:when test="${bookInfo.book_Byn eq 'Y' or bookInfo.yeyak_Processing eq '예약신청' or bookInfo.yeyak_Processing eq '예약중'}">
											<button>예약불가</button> 
										</c:when>
										<c:when test="${bookInfo.yeyak_Processing eq '예약만료'}">
											<button>예약신청</button> 
										</c:when>
										<c:otherwise>
											<button>예약신청</button>
										</c:otherwise>
									</c:choose>								
								</td>
							</tr>
						</c:forEach>
					</table>
					<p>!도서관에 비치된 도서는 예약이 불가능합니다!</p>
				</div>
			</div>
		</div>
	</section>
</body>
</html>