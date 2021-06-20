<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #89ba16;
	color: white;
	border: 1px solid #89ba16;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}

.main1 .search-box {width:750px;margin-top:38px;}
.main1 .search-box fieldset{position:relative;overflow:hidden;}
.main1 .search-box legend {background:#89BA16;color:#fff;}
.main1 .search-box input {border:0;background:#fff;width:100%;padding:10px;padding-left:18px;font-size:20px;color:#000;}
.main1 .search-box input:focus{outline:none}
.main1 .search-box input,

.main1 .search-box .main-box {width:100%;border:5px solid #89BA16;overflow:hidden;}
.main1 .search-box .main-box .title-box {position:absolute;left:0;background:#89BA16;color:#fff;font-size:18px;padding:13px 0;width:150px;text-align:center;}

.label {
	display: inline-block;
	width: 300px;
	height: 40px;
	font-weight: bold;
	margin-right: 30px;
}

.sorting { height: 30px; padding: 3px;}
.sorting .left { width: 80%; float: left; }
.sorting .right { width: 20%; float: right; }


</style>
<script type="text/javascript">
	function order() {
		var order = $('#orderSelect').val();
		console.log(order);
		serchFrm.book_Order.value = order;
		serchFrm.submit();
	}
	function bookInfo(Isbn) {
		ifrm.book_Isbn.value=Isbn;
		ifrm.submit();
	}
</script>
<script type="text/javascript">
	function goPage(page , bookOrder , bookTitle , bookAut , bookPub) {
		location.href="bookSerch.do?page="+page+"&book_Order="+bookOrder+"&book_Title="+bookTitle+"&book_Aut="+bookAut+"&book_Pub="+bookPub;
	}
</script>
</head>
<body>
	<!-- 상단배너 -->
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('resources/images/main.jpg');"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1 class="text-white font-weight-bold">통합자료검색</h1>
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
					<!-- 검색 영역 -->
					<form action="bookSerch.do" method="get" id="serchFrm">
						<input type="hidden" id="book_Order" name="book_Order">
						<div class="main1" align="center">
							<div class="section">
								<div class="search-box">
									<div class="main-box">
										<div class="box2">
											<input name="book_Title" id="book_Title" type="text" class="text" value="${reqVO.book_Title }"
												placeholder="도서 제목을 입력하세요" style="ime-mode: active;" />
										</div>
									</div>
								</div>
								<br>
								<p class="label">
									<label for="book_Aut">저자&nbsp;</label>
									<input type="text" id="book_Aut" name="book_Aut" value="${reqVO.book_Aut }">
								</p>
								<p class="label">
									<label for="book_Pub">출판사&nbsp;</label>
									<input type="text" id="book_Pub" name="book_Pub" value="${reqVO.book_Pub }">
								</p>
								<button type="submit" class="btn btn-primary text-white btn-search">
								<span class="icon-search icon mr-2"></span>검색
								</button>
							</div>
						</div>
					</form>
					<hr>
					<!-- 결과 출력 -->
					<c:if test="${!empty reqVO.book_Title and empty bookSerchList}">
						<div align="center">찾으시는 자료가 없습니다.</div>
					</c:if>
					<c:if test="${!empty bookSerchList}">
						<div class="sorting">
							<div class="left">총 <b>${paging.totalCount }건</b>이 검색되었습니다. </div>
							<div class="right">
							<select id="orderSelect" name="orderSelect">
								<option value="정렬종류">정렬종류</option>
								<option value="book_title">제목</option>
								<option value="book_aut">저자</option>
								<option value="book_location">배가위치</option>
								<option value="book_subject">주제</option>
							</select>
							<button class="btn btn-light" onclick="order()">정렬</button>
							</div>
						</div>
						<hr>
						<div>
						<form action="bookInfo.do" id="ifrm">
							<input type="hidden" id="book_Isbn" name="book_Isbn">
							<ul class="job-listings mb-5">
								<c:forEach items="${bookSerchList }" var="book">
									<li
										class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
										<a onclick="bookInfo(${book.book_Isbn})"></a>
										<div class="job-listing-logo">
											<img src="${book.book_Img }" alt="Image" class="img-fluid"
												width="100%">
										</div>
										<div
											class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
											<div class="job-listing-position custom-width w-60 mb-3 mb-sm-0" style="max-width:80%;">
												<h5><b>${book.book_Title }</b></h5>
												<h6>저자 : ${book.book_Aut }</h6>
												<h6>출판사 : ${book.book_Pub }</h6>
												<h6>주제 :
												<c:choose>
													<c:when test="${book.book_Subject eq '0'}">총류</c:when>
													<c:when test="${book.book_Subject eq '1'}">철학</c:when>
													<c:when test="${book.book_Subject eq '2'}">종교</c:when>
													<c:when test="${book.book_Subject eq '3'}">사회과학</c:when>
													<c:when test="${book.book_Subject eq '4'}">자연과학</c:when>
													<c:when test="${book.book_Subject eq '5'}">기술과학</c:when>
													<c:when test="${book.book_Subject eq '6'}">예술</c:when>
													<c:when test="${book.book_Subject eq '7'}">언어</c:when>
													<c:when test="${book.book_Subject eq '8'}">문학</c:when>
													<c:otherwise>역사</c:otherwise>
												</c:choose>
												</h6>
												<h6>위치 : ${book.book_Location }번서가</h6>
												<h6>수량 : ${book.all_Book_Cnt }권</h6>
											</div>
											<div class="job-listing-meta">
												<c:if test="${book.can_Book_Cnt <= 0 }">
													<span class="badge badge-danger" style="font-size: 15px;">대출중</span>
												</c:if>
												<c:if test="${book.can_Book_Cnt > 0 }">
													<span class="badge badge-success" style="font-size: 15px;">대출가능</span>
												</c:if>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</form>
						</div>
						
						<!-- 페이징 -->
						<div class="col-lg-12 text-center">
							<jsp:include page="../common/paging.jsp" flush="true">
								<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
								<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
								<jsp:param name="startPageNo" value="${paging.startPageNo}" />
								<jsp:param name="pageNo" value="${paging.pageNo}" />
								<jsp:param name="endPageNo" value="${paging.endPageNo}" />
								<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
								<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
							</jsp:include>
						</div>
					</c:if>
					<div align="right">
					<br>찾으시는 도서가 존재하지 않다면<a href="wishBook.do"> > 희망도서 신청하러 가기 </a> 
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>