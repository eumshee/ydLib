<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	th, td {
		vertical-align: middle !important;
	}
	 .col-md-12 a {
 	font-size: 1em;
 	color: lightgray;
 	text-decoration: none;
 	}
	 .col-md-12 a:hover { color: white; }
</style>
<script>
	function frmCheck() {
		if ($('#book_Num').val() == "") {
			frm.book_Num.focus();
			alert('책번호를 입력하세요.');
			return;
		}
		if ($('#user_Id').val() == "") {
			frm.user_Id.focus();
			alert('아이디를 입력하세요.');
			return;
		}
		frm.submit();
	}

	// 도서목록창
	function bookMgPopup(){
		var url= "bookManagement.do";  
		var winWidth = 700;
	    var winHeight = 600;
	    var popupOption= "width="+winWidth+", height="+winHeight;
		window.open(url,"",popupOption);
	}

	// 유저검색창
	function userSearchPopup(){
		var id = frm.user_Id.value;
		var url= "yeyakUserSearch.do?user_Id="+id;
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
				<h1 class="text-white font-weight-bold">도서목록</h1>
			</div>
			<div class="col-md-12" align="center">
				<span><a href="memberManagemant.do">회원목록관리</a></span>&nbsp;&nbsp;
				<span><a href="loanreManagemant.do">대출/반납관리</a></span>&nbsp;&nbsp;
				<span><a href="yeyakmanagemant.do" style="color:white;">예약도서관리</a></span>&nbsp;&nbsp;
				<span><a href="wishManagement.do">희망도서관리</a></span>&nbsp;&nbsp;
				<span><a href="bookManagement.do">장서관리</a></span>&nbsp;&nbsp;
				<span><a href="home.do">홈</a></span>
			</div>
		</div>
	</div>
</section>

<!-- 도서입력폼 -->
<section class="site-section">
 	<div class="container-fluid" style="width:50%;">
		<div align="right">
				<div class="col-6">
					<button type="button" class="btn btn-primary text-white btn-search"
					onclick="bookMgPopup()">
						<span class="icon-th-list mx-auto"></span>&nbsp;도서목록창
					</button>
				</div>	
				<br>			
			<div class="col-lg-3">			
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
					action="yeyakOneInsert.do" method="post">
					<h3 class="text-black mb-5 border-bottom pb-2">도서예약등록</h3>
					<table style="width: 100%;">
						<tr>
							<th class="form-group"><label for="book_Num">책번호</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Num"
								placeholder="책번호" name="book_Num"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="user_Id">아이디</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" placeholder="아이디" class="form-control"
								id="user_Id" name="user_Id"></td>
							<td><button type="button" onclick="userSearchPopup()">검색</button></td>
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
					onclick="location.href='yeyakmanagemant.do'">
					<span class="icon-reply-all mx-auto"></span>&nbsp;목록보기
				</button>
			</div>
		</div>
	</div>
</section>







