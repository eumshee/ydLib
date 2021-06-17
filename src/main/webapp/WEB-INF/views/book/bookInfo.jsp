<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function yeyak(userId , bookNum) {
		userGubun = '${loginUserVO.user_Gubun}';
		if(userId == ''){
			let login = confirm("로그인한 회원만 예약이 가능합니다.\n로그인 하시겠습니까?")
			if(login){
				location.href="userLoginForm.do";
			}
		}else if (userGubun!= '정회원'){
			alert("정회원만 예약이 가능합니다. \n정회원 전환은 데스크에 문의해주세요");
		}
		else{
			$.ajax({
				url : 'userYeyakCheck.do',
				data : {
					user_Id : userId
				},
				type : 'post',
				success : function(r) {
					if(r > 0){
						alert("예약 권수 초과입니다. \n최대 1권의 책만 예약 할 수 있습니다.");
					}else{
						$.ajax({
							url : 'userYeyakInsert.do',
							data : {
								user_Id : userId,
								book_Num : bookNum
							},
							type : 'post',
							success : function(suc) {
								alert("예약됐습니다.");
								location.reload(true);
							},
							error : function(err) {
								console.log(err)
							}
						})
					}
				},
				error : function(err) {
					console.log(err)
				}
			});
		}
	}
</script>
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
					<h1 class="text-white font-weight-bold">상세정보${loginUserVO.user_Id}</h1>
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
								<li><a href="wishBookInfo.do">희망도서 신청</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--컨텐츠 영역-->
				<div class="col-lg-8">
					<c:forEach items="${bookDetail }" var="bookInfo" end="0">
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
								<td>${bookInfo.book_Gubun  }</td><td>${bookInfo.book_Num }</td><td>${bookInfo.book_Location }번 서가</td>
								<c:if test="${bookInfo.book_Byn eq 'Y' }">
									<td></td>
								</c:if>
								<c:if test="${bookInfo.book_Byn eq 'N' }">
									<td>${bookInfo.return_Duedate }</td>
								</c:if>
								<td>
									<div class="job-listing-meta">
										<c:if test="${bookInfo.book_Byn eq 'N' or bookInfo.yeyak_Processing eq '예약중' or bookInfo.yeyak_Processing eq '예약신청'}">
											<span class="badge badge-danger">대출불가</span>
										</c:if>
										<c:if test="${bookInfo.book_Byn eq 'Y' and (bookInfo.yeyak_Processing eq '예약만료' or bookInfo.yeyak_Processing eq '예약취소' or empty bookInfo.yeyak_Processing )}">
											<span class="badge badge-success">대출가능</span>
										</c:if>
									</div>
								</td>
								<td>
									<c:choose>
										<c:when test="${bookInfo.book_Byn eq 'Y' or bookInfo.yeyak_Processing eq '예약신청' or bookInfo.yeyak_Processing eq '예약중'}">
											<button>예약불가</button> 
										</c:when>
										<c:when test="${bookInfo.book_Byn eq 'N'}">
											<button onclick="yeyak('${loginUserVO.user_Id}' , '${bookInfo.book_Num }')">예약신청</button> 
										</c:when>
										<c:otherwise>
											<button onclick="yeyak('${loginUserVO.user_Id}' , '${bookInfo.book_Num }')">예약신청</button>
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