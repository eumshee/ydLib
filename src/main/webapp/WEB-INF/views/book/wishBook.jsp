<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/hero_1.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">희망도서 신청</h1>
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
								<li class="sideactive"><a href="bookSerchForm.do">통합자료검색</a></li>
								<li><a href="newBook.do">신착자료</a></li>
								<li><a href="bestBook.do">대출 베스트</a></li>
								<li><a href="wishBook.do">희망도서 신청</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--컨텐츠 영역-->
				<div class="col-lg-8">
					<h2>원하는 책의 정보를 잘 모르시겠나요?_?</h2> 
					<a href ="https://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=Book&SearchWord=&x=7&y=11">인터넷 서점 바로가기</a> 
					<form action="wishBookInsert.do">
						이용자 Id : <input type="text" id="user_Id" name="user_Id" value=${loginUserVO.user_Id } readOnly><br>
						서명 : <input type="text" id="wish_Title" name="wish_Title" required> <br>
						저자 : <input type="text" id="wish_Aut" name="wish_Aut"> <br>
						출판사 : <input type="text" id="wish_Pub" name="wish_Pub"> <br>
						가격 : <input type="text" id="wish_Price" name="wish_Price"> <br>
						신청 사유 : <p><textarea rows="10" cols="50" id="wish_Bigo" name="wish_Bigo"></textarea></p>
						<input type="submit" value="신청하기">
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>