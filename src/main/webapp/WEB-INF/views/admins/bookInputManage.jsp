<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	th, td {
		vertical-align: middle !important;
		padding: 1em;
	}
	 .col-md-12 a {
	 	font-size: 1em;
	 	color: lightgray;
	 	text-decoration: none;
 	}
	 .col-md-12 a:hover { color: white; }
</style>
<script>	
	function imgCheck() {
		let imgChk = frm.book_Img.value;
		$('#book_Img').attr("src", imgChk);
	}

	function frmCheck() {
		if ($('#book_Subject option:selected').val() == "") {
			frm.book_Subject.focus();
			alert('주제를 선택하세요.');
			return;
		}
		if ($('#book_Gubun').val() == "") {
			frm.book_Gubun.focus();
			alert('분류를 입력하세요.');
			return;
		}
		if ($('#book_Title').val() == "") {
			frm.book_Title.focus();
			alert('제목을 입력하세요.');
			return;
		}
		if ($('#book_Aut').val() == "") {
			frm.book_Aut.focus();
			alert('저자를 입력하세요.');
			return;
		}
		if ($('#book_Pub').val() == "") {
			frm.book_Pub.focus();
			alert('출판사를 입력하세요.');
			return;
		}
		if ($('#book_Pubdate').val() == "") {
			frm.book_Pubdate.focus();
			alert('출판일을 입력하세요.');
			return;
		}
		if ($('#book_Indate').val() == "") {
			frm.book_Indate.focus();
			alert('입고일을 입력하세요.');
			return;
		}
		if ($('#book_Isbn').val() == "") {
			frm.book_Isbn.focus();
			alert('ISBN을 입력하세요.');
			return;
		}
		frm.submit();
	}

	// 상세검색창
	function popupOpen(){
		//var url= "bookDetailSearch.do"; //팝업창 페이지 URL
		var url= "https://www.nl.go.kr/";   
		var winWidth = 700;
	    var winHeight = 600;
	    var popupOption= "width="+winWidth+", height="+winHeight; //팝업창 옵션(optoin)
		window.open(url,"",popupOption);
	}
	
	// 도서목록창
	function bookMgPopup(){
		var url= "bookManagement.do";  
		var winWidth = 700;
	    var winHeight = 600;
	    var popupOption= "width="+winWidth+", height="+winHeight;
		window.open(url,"",popupOption);
	}
	
</script>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">도서등록</h1>
			</div>
			<div class="col-md-12" align="center">
				<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><a href="adminPage.do">관리자 홈</a></span>
			</div>
		</div>
	</div>
</section>

<!-- 도서입력폼 -->
<section class="site-section">
 	<div class="container-fluid" style="width:80%;">
		<div align="right">
			<div class="col-lg-3">
				<div class="col-6">
					<button type="button" class="btn btn-primary text-white btn-search"
					onclick="bookMgPopup()">
						<span class="icon-th-list mx-auto"></span>&nbsp;도서목록창
					</button>
				</div>	
				<br>			
				<span class="col-3">
					<button type="button" class="btn btn-primary text-white btn-search"
					id="bookDetailSearch"
					onclick="popupOpen()">
						<span class="icon-search-plus mx-auto"></span>&nbsp;상세
					</button>
				</span>				
				<span class="col-3">
					<button type="button" class="btn btn-primary text-white btn-search"
						onclick="frmCheck()">
						<span class="icon-plus mx-auto"></span>&nbsp;등록
					</button>
				</span>
			</div>
		</div>
		<div class="row mb-5">
			<div class="col-lg-12">
				<form id="frm" class="p-4 p-md-5 border rounded"
					action="bookOneInsert.do" method="post">
					<h3 class="text-black mb-5 border-bottom pb-2">Book Input</h3>
					<table style="width: 100%;">
						<tr>
							<td rowspan="12" style="width: 40%; text-align: center;">
								<div class="form-group">
									<img id="book_Img" alt="Upload Image"><br>
									<button type="button" class="btn btn-primary btn-md btn-file"
										onclick="imgCheck()">이미지 확인</button>
								</div>
							</td>
							<th class="form-group" style="width: 10%;"><label
								for="book_Subject">책주제&nbsp;</label><span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td style="width: 40%;"><select
								class="selectpicker border rounded" id="book_Subject"
								name="book_Subject" data-style="btn-black"
								data-live-search="true" title="Select Subject">
									<option value="" hidden="" selected></option>
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
							</select></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Gubun">분류</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Gubun"
								placeholder="분류" name="book_Gubun"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Title">제목</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" placeholder="제목" class="form-control"
								id="book_Title" name="book_Title"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Aut">저자</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" placeholder="저자" class="form-control"
								id="book_Aut" name="book_Aut"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Pub">출판사</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" placeholder="출판사"
								class="form-control" id="book_Pub" name="book_Pub"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Pubdate">출판일</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control"
								id="book_Pubdate" name="book_Pubdate" placeholder="yyyy-mm-dd"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Indate">입고일</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Indate"
								name="book_Indate" placeholder="yyyy-mm-dd"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Location">위치</label>

							</th>
							<td><input type="text" class="form-control"
								id="book_Location" name="book_Location"
								placeholder="1 ~ 4(012/345/679/8)"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Img">이미지</label></th>
							<td><input type="text" placeholder="이미지링크"
								class="form-control" id="book_Img" name="book_Img"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Desc">설명</label></th>
							<td><input type="text" placeholder="설명" class="form-control"
								id="book_Desc" name="book_Desc"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Isbn">ISBN</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" placeholder="ISBN"
								class="form-control" id="book_Isbn" name="book_Isbn"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Bigo">비고</label></th>
							<td><input type="text" placeholder="비고" class="form-control"
								id="book_Bigo" name="book_Bigo"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div align="center">
		<div class="col-lg-3">
			<div class="col-5">
				<button type="button" class="btn btn-primary text-white btn-search"
					onclick="location.href='bookManagement.do'">
					<span class="icon-reply-all mx-auto"></span>&nbsp;목록보기
				</button>
			</div>
		</div>
	</div>
</section>