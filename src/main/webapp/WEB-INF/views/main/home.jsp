<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>

.site-footer { height: 250px;}

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
    padding: 17px 3px 17px 0px;
    vertical-align: bottom;
    list-style: none;
}

.qmenu {padding-top: 2em;}

.qmenu>li{
	position: relative;
    display: inline-block;
    width: 170px;
    padding: 23px 0px 23px 0px;
    vertical-align: bottom;
    list-style: none;
    text-align: center;
    color: #4d4d4d;
    line-height: 1.7em;
}

.qmenu>li>a{ color: #4d4d4d; }

.qmenu>li>a:hover{
	text-decoration: none;
	color: #000000;
}
   
.items {
	background: url('resources/images/circle.png') no-repeat center;
    background-size: contain;
}

.qicon {
	color: #4d4d4d;
	font-size: 43px;
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
			<!-- ???????????? ?????? -->
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
											<div class="title-box">??????????????????</div>
											<div class="box1">
												<div class="box2">
													<input name="book_Title" id="book_Title" type="text"
														class="text" placeholder="??? ????????? ???????????????" />
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
			<!-- ?????? ?????? -->
			<div class="cont col-md-12">
			
				<!-- ?????? left -->
				<div class="left col-md-5 col-lg-5 mb-12 mb-lg-12">
					<form id="frm" action="noticeSelect.do" method="post">
						<input type="hidden" id="notice_Id" name="notice_Id">
					</form>
					<!-- ?????????????????? -->
					<ul>
						<li>
							<table width="100%">
								<tr class="tr">
									<td><h3>????????????</h3></td>
									<td align="center"><h4>
											<a href="noticeList.do" style="color: black;"><span
												class="icon-th-list"></span></a>
										</h4></td>
								</tr>
								<c:forEach var="vo" items="${notice }">
									<tr onclick="formSubmit(${vo.notice_Id})">
										<td width="75%">???&nbsp;${vo.notice_Title }</td>
										<td>${vo.notice_Date }</td>
									</tr>
								</c:forEach>
							</table>
						</li>
						<br>
						<!-- ????????? -->
						<li><h3>????????????/?????????</h3></li>
						<li style="line-height: 2.3em;">??? ???????????? : ?????? ?????? 9???~?????? 6???</li>
						<li><b style="color: #515151;">??? ????????? : ?????? ???, ????????? ??? ???????????????</b></li>
					</ul>
				</div>
				<!-- ???????????? -->
				<div class="right col-md-7 col-lg-7 mb-12 mb-lg-12">
					<c:if test="${loginUserVO.user_Id eq null}">
						<h3>????????? ??????</h3>
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
						<div align="center"><h6>????????? ??????????????? ???????????? ????????? ??????????????? ?????????????????????.</h6></div>
					</c:if>
					<c:if test="${loginUserVO.user_Id ne null}">
						<h3>${loginUserVO.user_Name }?????? ?????? ????????????</h3>
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
						<div align="center"><h6>???????????? ??????????????? ????????? ?????????????????????.</h6></div>
					</c:if>
				</div>
			</div>
			<!-- ????????? -->
			<div class="bottom col-md-12 col-lg-12 mb-12 mb-lg-12" style="text-align: center;">
			<ul class="qmenu">
				<li class="items">
					<a href="userLoan.do">
					<span class="icon-book qicon"></span><br>
					<span><b>????????????</b></span>
					</a>
				</li>
				<li class="items">
					<a href="wishBookInfo.do">
					<span class="icon-edit qicon"></span><br>
					<span><b>??????????????????</b></span>
					</a>
				</li>
				<li class="items">
					<a href="newBook.do">
					<span class=" icon-tags qicon"></span><br>
					<span><b>????????????</b></span>
					</a>
				</li>
				<li class="items">
					<a href="seatroom.do">
					<span class="icon-th-large qicon"></span><br>
					<span><b>???????????????</b></span>
					</a>
				</li>
				<li class="items">
					<a href="boardList.do">
					<span class="icon-question-circle-o qicon"></span><br>
					<span><b>???????????????</b></span>
					</a>
				</li>
				<li class="items">
					<a href="map.do">
					<span class="icon-map-signs qicon"></span><br>
					<span><b>??????????????????</b></span>
					</a>
				</li>
			</ul>
			</div>
		</div>
	</div>
</section>