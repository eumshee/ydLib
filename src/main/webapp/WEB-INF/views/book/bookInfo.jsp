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
				</div>
			</div>
		</div>
	</section>
</body>
</html>