<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<script>
function goBack() {
	window.history.back(); 
}
</script>
<script type="text/javascript">
	function yeyak(userId, bookNum) {
		userGubun = '${loginUserVO.user_Gubun}';
		if (userId == '') {
			let login = confirm("로그인한 회원만 예약이 가능합니다.\n로그인 하시겠습니까?")
			if (login) {
				location.href = "userLoginForm.do";
			}
		} else if (userGubun != '정회원') {
			alert("정회원만 예약이 가능합니다. \n정회원 전환은 데스크에 문의해주세요");
		} else {
			$.ajax({
				url : 'userYeyakCheck.do',
				data : {
					user_Id : userId
				},
				type : 'post',
				success : function(r) {
					if (r > 0) {
						alert("예약 권수 초과입니다. \n최대 1권의 책만 예약 할 수 있습니다.");
					} else {
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
<style>
.book-info1 {
	font-size: 1.2rem;
}

.badge {
	padding: 1rem 2rem;
	font-size: 1rem;
}

th {
	color: #404040;
}

.badge-light {
	color: #404040;
	background-color: #f5f4f4;
	border: none;
}

th, td {
	padding: 0.5rem 1rem 0.5rem 1rem;
}

.tooltip {
	position: relative;
	display: inline-block;
	margin: auto;
}

.tooltip .tooltip-content {
	visibility: hidden;
	width: 220px;
	background-color: orange;
	padding: 0;
	color: white;
	text-align: center;
	position: absolute;
	z-index: 1;
	bottom: 180%;
	left: 50%;
	margin-left: -110px;
}

.tooltip .tooltip-content::after {
	content: " ";
	position: absolute;
	top: 100%;
	left: 50%;
	margin-left: -10px;
	border-width: 10px;
	border-style: solid;
	border-color: orange transparent transparent transparent;
}

.tooltip:hover .tooltip-content {
	visibility: visible;
}
</style>
</head>
<body>
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/main.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">상세정보</h1>
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
								<li class="sideactive"><a href="bookSerchForm.do">통합자료검색</a>
								</li>
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
						<div>
							<button type="button" onclick="goBack()"
								class="btn btn-light">목록으로</button>
							<br> <br>
						</div>
						<div class="row">
							<div class="col-lg-10 mb-4 mb-lg-0">
								<table>
									<tr>
										<td rowspan="8"><img src="${bookInfo.book_Img }"
											class="img-fluid rounded" width="240px"></td>
										<td colspan="2"><h2>
												<b>${bookInfo.book_Title }</b>
											</h2></td>
									</tr>
									<tr>
										<th width="13%">저자</th>
										<td width="50%">${bookInfo.book_Aut }</td>
									</tr>
									<tr>
										<th>출판사</th>
										<td>${bookInfo.book_Pub }</td>
									</tr>
									<tr>
										<th>발행일</th>
										<td>${x:substring(bookInfo.book_Pubdate,0,10)}</td>
									</tr>
									<tr>
										<th>ISBN</th>
										<td>${bookInfo.book_Isbn}</td>
									</tr>
									<tr>
										<th>분류기호</th>
										<td>${bookInfo.book_Gubun}</td>
									</tr>
									<tr>
										<th>배가위치</th>
										<td>${bookInfo.book_Location }번서가</td>
									</tr>
									
								</table>
							</div>
						</div>
						<br>
						</c:forEach>
						<table>
						<tr align="center">
							<th>청구기호</th><th>등록번호</th><th>배가위치</th><th>반납예정일</th><th>대출상태</th><th>대출예약</th>
						</tr>
						<c:forEach items="${bookDetail }" var="bookInfo">
							<tr>
								<td>${bookInfo.book_Gubun  }</td><td>${bookInfo.book_Num }</td><td>${bookInfo.book_Location }번 서가</td>
								<c:if test="${bookInfo.book_Byn eq 'Y' }">
									<td></td>
								</c:if>
								<c:if test="${bookInfo.book_Byn eq 'N' }">
									<td>${x:substring(bookInfo.return_Duedate,0,10)}</td>
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
											<span class="badge badge-light">예약불가</span> 
										</c:when>
										<c:when test="${bookInfo.book_Byn eq 'N'}">
											<button class="badge badge-light" onclick="yeyak('${loginUserVO.user_Id}' , '${bookInfo.book_Num }')">예약신청</button> 
										</c:when>
										<c:otherwise>
											<button class="badge badge-light" onclick="yeyak('${loginUserVO.user_Id}' , '${bookInfo.book_Num }')">예약신청</button>
										</c:otherwise>
									</c:choose>								
								</td>
							</tr>
						</c:forEach>
						</table>
				</div>
			</div>
		</div>
	</section>
</body>
</html>