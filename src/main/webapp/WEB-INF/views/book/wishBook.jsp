<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function wishCnt(userId) {
		$.ajax({
				url : 'wishCnt.do',
				data : {
					user_Id : userId
				},
				type : 'post',
				success : function(r) {
					if(r > 0){
						alert("희망도서 신청 권수 초과입니다. \n한달에 1권의 책만 신청 할 수 있습니다.");
					}else{
						if (frm.wish_Title.value == "") {
							alert("제목은 필수 입니다. 제목을 입력해주세요");
							frm.user_Id.focus();
							return false;
						}
						alert("희망도서가 접수됐습니다.")
						frm.submit();
						
					}
				},
				error : function(err) {
					console.log(err)
				}
			});
		}
</script>
</head>
<body>
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/main.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">희망도서 신청</h1>
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
								<li><a href="bestBook.do">대출 베스트</a></li>
								<li class="sideactive"><a href="wishBookInfo.do">희망도서 신청</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--컨텐츠 영역-->
				<div class="col-lg-8">
				<form class="p-4 p-md-5 border rounded" action="wishBookInsert.do" id="frm">
					<h3 class="text-black mb-3 border-bottom pb-2">희망도서 신청하기</h3>
					<span>* 신청하고자 하는 책에 대한 정보가 더 필요하시다면</span>
					<a href ="https://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=Book&SearchWord=&x=7&y=11" target="_blank">
						<b>&nbsp;<i class="icon-external-link"></i>&nbsp;인터넷 서점 바로가기</b>
					</a><br><br>
					<div class="form-group">
						<label for="board_Title">이용자 Id</label> 
						<input type="text" class="form-control" id="user_Id" name="user_Id" value=${loginUserVO.user_Id } readOnly>
					</div>
					<div class="form-group">
						<label for="board_Title">제목</label> 
						<input type="text" class="form-control" id="wish_Title" name="wish_Title" required="required">
					</div>
					<div class="form-group">
						<label for="board_Title">저자</label> 
						<input type="text" class="form-control" id="wish_Aut" name="wish_Aut" >
					</div>
					<div class="form-group">
						<label for="board_Title">출판사</label> 
						<input type="text" class="form-control" id="wish_Pub" name="wish_Pub" >
					</div>
					<div class="form-group">
						<label for="board_Title">가격</label> 
						<input type="text" class="form-control" id="wish_Price" name="wish_Price" >
					</div>
					<div class="form-group">
						<label for="board_Content">신청 사유</label>
						<textarea class="form-control" rows="10" cols="50" id="wish_Bigo" name="wish_Bigo"></textarea>
					</div>
					
				</form>
					<div align="center">
						<button class="btn btn-primary btn-md mt-4" onclick="wishCnt('${loginUserVO.user_Id}')">희망도서 신청하기</button>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>