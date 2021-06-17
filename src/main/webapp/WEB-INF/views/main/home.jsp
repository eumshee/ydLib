<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.site-footer .scroll-top {
	position: absolute;
	z-index: 5;
	top: 0;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	background: #fff;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-box-shadow: 0 0px 10px 0px rgba(0, 0, 0, 0.1);
	box-shadow: 0 0px 10px 0px rgba(0, 0, 0, 0.1);
}

.main1 .search-box {width:750px;margin-top:38px;}
.main1 .search-box fieldset{position:relative;overflow:hidden;}
.main1 .search-box legend {background:#89BA16;color:#fff;}
.main1 .search-box input {border:0;background:#fff;width:100%;padding-left:18px;font-size:17px;color:#000;}
.main1 .search-box input:focus{outline:none}
.main1 .search-box input,
.main1 .search-box button{height:52px;line-height:51px;border-right:7px solid #89BA16 !important; border: none;}
.main1 .search-box button{position:absolute;right:0;width:60px;text-align:center;background:#fff;font-size:30px;color:#757575;}

.main1 .search-box .main-box {width:100%;border:7px solid #89BA16;overflow:hidden;}
.main1 .search-box .main-box .title-box {position:absolute;left:0;background:#89BA16;color:#fff;font-size:18px;padding:13px 0;width:150px;text-align:center;}
.main1 .search-box .box1{float:left;width:100%;margin-left:140px;}
.main1 .search-box .box2{margin-right:80px}

.container {  max-width: 1300px; }

.section-hero, .section-hero>.container>.row {
	align-content: center;
}

.cont { 
	margin-left: 15px; 
	margin-right: 15px; 
	background-color: ghostwhite; 
	height: 47%; 
	padding-top: 30px;
	box-shadow: 0px 0px 13px 8px rgb(0 0 0 / 20%); 
	    border-radius: 1.5em;
	    }
ul { -webkit-padding-start: 0px; list-style: none;}
	    
.left  { width: 40%; float: left;}
.right { width: 65%; float: right;} 		
.bottom { width: 100%; height: 20%; float: left; } 		

h3 { font-weight: bold; }

tr:hover:not(:first-of-type) {	background-color: #ebebec;	}
tr {	height: 35px; }

.book-img>a>img{ width: 150px; box-shadow: 4px 3px 17px 1px rgb(0 0 0 / 25%); }
.recommend>li{
	position: relative;
    display: inline-block;
    width: 170px;
    padding: 17px 0px 17px 0px;
    vertical-align: bottom;
    list-style: none;
}

.qmenu>li{
	position: relative;
    display: inline-block;
    width: 170px;
    padding: 17px 0px 17px 0px;
    vertical-align: bottom;
    list-style: none;
    text-align: center;
    color: ghostwhite;
}
	
</style>


<script>
function formSubmit(id) {
	frm.notice_Id.value = id;
	console.log(id);
	frm.submit();
}
</script>
<!-- HOME -->
<section class="home-section section-hero overlay bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">

	<div class="container">
		<div class="row align-items-center justify-content-center">
			<!-- 검색박스 영역 -->
			<div class="col-md-12">
				<div class="mb-5 text-center"></div>
				<div class="mb-5">
					<div class="main1" align="center">
						<div class="section">
							<div class="search-box">
								<form action="bookSerch.do" method="get" id="serchFrm">
									<input type="hidden" id="book_Aut" name="book_Aut"> <input
										type="hidden" id="book_Pub" name="book_Pub">
									<fieldset>
										<div class="main-box">
											<div class="title-box">통합자료검색</div>
											<div class="box1">
												<div class="box2">
													<input name="book_Title" id="book_Title" type="text"
														class="text" placeholder="책 제목을 입력하세요"
														style="ime-mode: active;" />
												</div>
											</div>
											<button type="submit">
												<span class="icon-search icon mr-2"></span>
											</button>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 메인 카드 -->
			<div class="cont col-md-12">
			
				<!-- 카드 left -->
				<div class="left col-md-5 col-lg-5 mb-12 mb-lg-12">
					<form id="frm" action="noticeSelect.do" method="post">
						<input type="hidden" id="notice_Id" name="notice_Id">
					</form>
					<!-- 공지사항출력 -->
					<ul>
						<li>
							<table width="100%">
								<tr class="tr">
									<td><h3>공지사항</h3></td>
									<td align="center"><h4>
											<a href="noticeList.do" style="color: black;"><span
												class="icon-th-list"></span></a>
										</h4></td>
								</tr>
								<c:forEach var="vo" items="${notice }">
									<tr onclick="formSubmit(${vo.notice_Id})">
										<td width="75%">•&nbsp;${vo.notice_Title }</td>
										<td>${vo.notice_Date }</td>
									</tr>
								</c:forEach>
							</table>
						</li>
						<li></li>
						<!-- 휴관일 -->
						<li><h3>휴관일</h3></li>
					</ul>
				</div>
				<!-- 추천도서 -->
				<div class="right col-md-7 col-lg-7 mb-12 mb-lg-12">
					<c:if test="${loginUserVO.user_Id eq null}">
						<h3>베스트 도서</h3>
						<ul class="recommend">
							<c:forEach var="vo" items="${bookRecommend }">
								<li class="book-img">
								<a href="bookInfo.do?book_Isbn=${vo.book_Isbn }"> <img src="${vo.book_Img }"></a>
								</li>
								<li>
									<h4><b>${vo.book_Title }</b></h4>
									<span class="book-author">${vo.book_Aut }</span>
								</li>
							</c:forEach>
						</ul>
						<div align="center"><h6>도서관 홈페이지에 회원가입 하시면 맞춤도서를 추천해드립니다.</h6></div>
					</c:if>
					<c:if test="${loginUserVO.user_Id ne null}">
						<h3>${loginUserVO.user_Name }님을위한 추천도서</h3>
						<ul class="recommend">
							<c:forEach var="vo" items="${bookRecommend }">
								<li class="book-img">
								<a href="bookInfo.do?book_Isbn=${vo.book_Isbn }"> <img src="${vo.book_Img }"></a>
								</li>
								<li>
									<h4><b>${vo.book_Title }</b></h4>
									<span class="book-author">${vo.book_Aut }</span>
								</li>
							</c:forEach>
						</ul>
					</c:if>
				</div>
			</div>
			<!-- 아이콘 -->
			<div class="bottom col-md-12 col-lg-12 mb-12 mb-lg-12">
			<ul class="qmenu">
				<li>
				<h1><span class="icon-book"></span></h1>
				<span>대출현황</span>
				</li>
				<li>
					<span>희망도서신청</span>
				</li>
				<li>
					<span>신착도서</span>
				</li>
				<li>
					<span>열람실현황</span>
				</li>
				<li>
					<span>찾아오시는길</span>
				</li>
			</ul>
			</div>
		</div>
	</div>


	<a href="#next" class="scroll-button smoothscroll"> <span
		class=" icon-keyboard_arrow_down"></span>
	</a>

</section>

<section class="py-5 bg-image overlay-primary fixed overlay mb-5"
	id="next" style="background-image: url('resources/images/main.jpg');">
	<div class="container">
		<div class="row mb-5 justify-content-center">
			<div class="col-md-7 text-center">
				<h2 class="section-title mb-2 text-white">DAEGU YEDAM SMALL
					LIBRARY</h2>
				<p class="lead text-white">537, Gukchaebosang-ro, Jung-gu,
					Daegu, Republic of Korea</p>
			</div>
		</div>
	</div>
</section>