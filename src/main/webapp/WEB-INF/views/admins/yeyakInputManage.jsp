<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
th, td {
	vertical-align: middle !important;
}

.left {
	width: 50%;
	float: left;
}

.right {
	width: 50%;
	float: right;
}
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
		
		var userId=$('#user_Id').val();
		console.log(userId);
		
		$.ajax({
			url : 'yeyakCntChk.do',
			data : {
				user_Id : userId
			},
			dataType:'text',
			type : 'post',
			success : function(r) {
				if(r > 0){
					alert("예약도서 신청권수를 초과하였습니다. \n1권의 책만 예약할 수 있습니다.");
				}else{
					alert("예약도서가 신청됐습니다.")
					frm.submit();
				}
			},
			error : function(err) {
				console.log(err);
			}
		});
		
		//let yeyakChk = confirm("예약상태를 확인하셨습니까?");
		//if (yeyakChk) {
		//	frm.submit();
		//}
	}

	// 유저체크창
	function yeyakUserCheck() {
		var userid = frm.user_Id.value;
		console.log(userid);
		var url = 'yeyakManageCheck.do?user_Id=' + userid;
		var winWidth = 700;
		var winHeight = 600;
		var popupOption = "width=" + winWidth + ", height=" + winHeight;
		window.open(url, "", popupOption);
	}

	// 도서목록창
	function bookMgPopup() {
		var url = "bookManagement.do";
		var winWidth = 1000;
		var winHeight = 600;
		var popupOption = "width=" + winWidth + ", height=" + winHeight;
		window.open(url, "", popupOption);
	}

	// 유저검색창
	function userSearchPopup() {
		var url = "yeyakUserSearch.do";
		var winWidth = 700;
		var winHeight = 600;
		var popupOption = "width=" + winWidth + ", height=" + winHeight;
		window.open(url, "", popupOption);
	}
	
</script>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">예약도서등록</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <a
						href="adminPage.do"><span class="text-white"><strong>관리자</strong></span></a>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 예약도서 입력폼 -->
<section class="site-section">
	<div class="container-fluid" style="width: 50%;">
			<div align="right">
				<button type="button" class="btn btn-primary text-white btn-search"
					onclick="bookMgPopup()">
					<span class="icon-th-list mx-auto"></span>&nbsp;도서검색
				</button>
				<button type="button" class="btn btn-primary text-white btn-search"
					onclick="userSearchPopup()">
					<span class="icon-search-plus mx-auto"></span>&nbsp;회원검색
				</button><br><br>
			</div>
		<div class="row mb-5">
			<div class="col-lg-12">
				<form id="frm" class="p-4 p-md-5 border rounded"
					action="yeyakOneInsert.do" method="post">
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
							<td><input type="text" placeholder="아이디"
								class="form-control" id="user_Id" name="user_Id"></td>
							<td><button type="button" onclick="yeyakUserCheck()">체크</button></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div align="center">
		<div class="col-lg-5">
			<button type="button" class="btn btn-light"
				onclick="location.href='yeyakmanagemant.do'">목록으로</button>
			<button type="button" class="btn btn-primary text-white btn-search"
				onclick="frmCheck()">
				<span class="icon-plus mx-auto"></span>&nbsp;등록
			</button>
		</div>
	</div>
</section>







