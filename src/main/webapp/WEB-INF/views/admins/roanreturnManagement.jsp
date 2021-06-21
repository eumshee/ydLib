<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="z" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<x:formatDate value='${toDay}' pattern='yyyy-MM-dd' var="nowDate"/>
<x:formatDate value='${user.user_Loansus }' pattern='yyyy-MM-dd' var="user_Loansus"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.member{
float: left;
width: 40%;
margin-left: 5%;
margin-right: 5%;
text-align: center;
}
.returnbook{
	width: 45%;
	text-align: center;
}
.prosessbox{
	margin: 30px auto;
	width: 80%;
	text-align: center;
}
h2{
	display: inline-block;
	padding-right: 20px; 
}
.table-responsive {
    display: block;
    width: 100%;
    overflow-x: clip;
</style>
<script>

		function seachcheck(){
			let count = $('#count'+10).val();
			console.log(count);
			if(count == 10){
				alert('총대여 권수는 10권 입니다. 대출이 불가능합니다.')
				return;
			}
			
			if($('#user_Gubun').val()=="삭제 회원"){
				alert('삭제 회원입니다. 대출/반납이 불가능 합니다.');
				return;
			}else if( $('#user_Gubun').val()=="준회원" ){
				alert('준회원입니다. 대출/반납/예약 이 불가능 합니다.')
				return;
			}else{
				frm.book_Num.value=$('#bookSeach').val();
				console.log($('#bookSeach').val());
				$.ajax({
					url:'checkBook.do',
					type: 'post',
					data: {book_Num: $('#bookSeach').val()},
					success: function(result){
						if(result>0){
							alert('이미 대출중인 책입니다.');
							$('#bookSeach').val("");
							$('#bookSeach').focus();
						}else{
							alert('대출이 완료되었습니다.');
							
							frm.submit();
						}
					},
					error: function(err){
						console.error(err);
					}
				})
		
			}
		}

		function returncheck(id){
			let book_Num = $('#returnBookNum'+id).val();
			let user_Id = $('#returnUserId').val();
			let user_Name =$('#returnUserName').val();
			console.log(book_Num,user_Id,user_Name)
			$.ajax({
				url: 'returncheck.do',
				type: 'post',
				data: {book_Num: book_Num, user_Id: user_Id, user_Name: user_Name},
				success: function(result){
					//1이면 예약신청 목록이 있으므로 예약신청 페이지 전환
					if(result>0){
						if(confirm(book_Num + "번 책에 대한 예약이 있습니다. 예약 페이지로 이동하시겠습니까?")){
							location.href="yeyakmanagemant.do";
						}else{
							location.href="adminMemberSearch2.do?user_Name="+user_Name;
						}
					}else{//0이면 홈페이지 재요청
						alert('반납이 완료되었습니다.');
						location.href="adminMemberSearch2.do?user_Name="+user_Name;
					}
				},
				error: function(err){
					console.error(err)
				}
			})
		}
</script>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">대출/반납관리</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span>
					<a href="adminPage.do"><span
						class="text-white"><strong>관리자</strong></span></a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 상단배너 end -->

<section class="site-section block__18514" id="next-section">
	<form id ="frm" action="insertHistory.do" method="post">
		<input type="hidden" id="user_Id" name="user_Id" value="${user.user_Id }">
		<input type="hidden" id="user_Id" name="user_Name" value="${user.user_Name }">
		<input type="hidden" id="user_Gubun" name="user_Gubun" value="${user.user_Gubun }">
		<input type="hidden" id="book_Num" name="book_Num" >
	</form>
	<!--컨텐츠 영역-->
		<div class="row">
			<div class="member">
				<h2>회원 정보</h2>
					<form action = "adminMemberSearch2.do" method="post">
						<input type="text" id="seachName" name="user_Name" placeholder="이름을 입력하세요" size="20">
						<button type="submit" id="userSeach" class="btn btn-primary text-white btn-search">
							<span class="icon-search icon mr-2"></span>검색
						</button>
					</form>
				<table class="table">
					<tr>
						<th>id</th><td>${user.user_Id }</td><th>이름</th><td>${user.user_Name }</td>
					</tr>
					<tr>
						<th>회원등급</th><td>${user.user_Gubun }</td><th>성별</th>
						<td>
							<c:if test="${user.user_Gender eq 'M'}">남자</c:if>
							<c:if test="${user.user_Gender eq 'W'}">여자</c:if>
						</td>
					</tr>
					<tr>
						<th>생년월일</th><td>${user.user_Birth }</td><th>전화번호</th><td>${user.user_Phone }</td>
					</tr>
					<tr>
						<th > 이메일 </th><td>${user.user_Email }</td><th>연체일</th><td><b style="color: red;">${user_Loansus }</b></td>
					</tr>
				</table>
			</div>
			<div class="returnbook">
				<h2>대출 목록</h2>
					<input type="text" id="bookSeach" name="bookSeach" placeholder="책번호를 입력하세요" size="20">
					<button type="button" class="btn btn-primary text-white btn-search" onclick="seachcheck()"><span class="icon-search icon mr-2"></span>대출</button>
				<table class="table">
					<tr>
						<th>대출번호</th><th>책번호</th><th>대출일자</th><th>반납예정일</th><th>연체일</th><th>대출상태</th><th>처리</th>
					</tr>
					<c:choose>
						<c:when test="${!empty historty}">
							<c:forEach items="${historty }" var="vo" varStatus="status">
								<input type="hidden" id= "count${status.count }" value="${status.count }">
								<input type="hidden" id= "returnUserId" name="user_Id" value="${user.user_Id }">
								<input type="hidden" id= "returnBookNum${vo.loan_Id}" name="book_Num" value="${vo.book_Num }">
								<input type="hidden" id= "returnUserName" name="user_Name" value="${user.user_Name }">
								<tr>
									<td>${vo.loan_Id } </td><td>${vo.book_Num }</td><td>${vo.loan_Date }</td>
									<td>${vo.return_Duedate }</td><td>${vo.return_Delaydays }</td><td>${vo.loan_Status }</td>
									<td><input type="button" value="반납" onclick="returncheck(${vo.loan_Id})"></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<div class="prosessbox">
				<h2>처리된 내용</h2>
				<div class="card-body">
					<div class="table-responsive">
						<input type="hidden" name="user_Name">
						<input type="hidden" name="user_Id">
						<input type="hidden" id="user_Gubun" name="user_Gubun">
						<table class="table table-bordered" id="dataTable" style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th>대출번호</th>
									<th>사용자</th>
									<th>책번호</th>
									<th>대출일자</th>
									<th>반납예정일</th>
									<th>반납일</th>
									<th>연체일</th>
									<th>대출상태</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>대출번호</th>
									<th>사용자</th>
									<th>책번호</th>
									<th>대출일자</th>
									<th>반납예정일</th>
									<th>반납일</th>
									<th>연체일</th>
									<th>대출상태</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${historyList }" var="list">
									<tr>
										<td>${list.loan_Id }</td><td>${list.user_Id }</td><td>${list.book_Num }</td>
										<td>${list.loan_Date }</td><td>${list.return_Duedate }</td><td>${list.return_Date }</td>
										<td>${list.return_Delaydays }</td><td>${list.loan_Status }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>			
			</div>
		</div>
</section>