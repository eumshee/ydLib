<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
	function goPage(page) {
		location.href="newBook.do?page="+page;
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
					<h1 class="text-white font-weight-bold">예약현황</h1>
					<div class="custom-breadcrumbs">
						<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
							class="text-white"><strong>나의도서관</strong></span>
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
								<li><a href="userLoan.do">대출내역조회</a></li>
								<li class="sideactive"><a href="userYeyak.do">예약현황</a></li>
								<li><a href="userWish.do">희망도서 신청현황</a></li>
								<li><a href="userPage.do">내정보 수정</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--컨텐츠 영역-->
				<div class="col-lg-8">
					<form action="yeyakCancel.do" id="ifrm">
						<input type="hidden" id="book_Isbn" name="book_Isbn">

						<c:choose>
							<c:when test="${userYeyakList.isEmpty() }">
								<table class="table table-bordered" style="width: 100%;">
									<tr>
										<td style="width: '100%';">
											<div style="align: 'center'; width: '100%';">
												<h6>현재 예약중인 도서가 없습니다.</h6>
											</div>

										</td>
									</tr>
								</table>
							</c:when>

							<c:when test="${!userYeyakList.isEmpty()}">
								<ul class="job-listings mb-5">




									<c:forEach items="${userYeyakList }" var="yeyak">

										<br>
										<div>
											<ul>
												<li>예약신청일: &nbsp; ${yeyak.yeyak_Submit }</li>
												<c:choose>
													<c:when test="${yeyak.yeyak_Start ne null }">
														<li>대출가능기간: &nbsp; ${yeyak.yeyak_Start } ~
															${yeyak.yeyak_End }</li>
														<li><b>상태: 대출가능(예약하신 도서를 대출가능기간 안에 대출해주시기 바랍니다.)</b></li>
													</c:when>
													<c:when test="${yeyak.yeyak_Start eq null }">
														<li>상태: 예약신청(예약한 도서가 준비될 시 안내문자가 발송됩니다.)</li>
													</c:when>
												</c:choose>
											</ul>
										</div>
										<br>
										<li
											class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
											<a onclick="bookInfo(${yeyak.book_Isbn})"></a> <input
											type="hidden" id="yeyak_Num" name="yeyak_Num"
											value="${yeyak.yeyak_Num}">
											<div class="job-listing-logo">
												<img src="${yeyak.book_Img }" alt="Image" class="img-fluid"
													width="100%">
											</div>
											<div
												class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
												<div
													class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
													<h5>
														<b>${yeyak.book_Title }</b>
													</h5>
													<h6>저자 : ${yeyak.book_Aut }</h6>
													<h6>출판사 : ${yeyak.book_Pub }</h6>
													<h6>
														주제 :
														<c:choose>
															<c:when test="${yeyak.book_Subject eq '0'}">총류</c:when>
															<c:when test="${yeyak.book_Subject eq '1'}">철학</c:when>
															<c:when test="${yeyak.book_Subject eq '2'}">종교</c:when>
															<c:when test="${yeyak.book_Subject eq '3'}">사회과학</c:when>
															<c:when test="${yeyak.book_Subject eq '4'}">자연과학</c:when>
															<c:when test="${yeyak.book_Subject eq '5'}">기술과학</c:when>
															<c:when test="${yeyak.book_Subject eq '6'}">예술</c:when>
															<c:when test="${yeyak.book_Subject eq '7'}">언어</c:when>
															<c:when test="${yeyak.book_Subject eq '8'}">문학</c:when>
															<c:otherwise>역사</c:otherwise>
														</c:choose>
													</h6>
													<h6>위치 : ${yeyak.book_Location }번서가</h6>
												</div>
												<div
													class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
													<button type="button"
														class="btn btn-primary text-red btn-search"
														onclick="submit()">예약취소</button>
												</div>
											</div>

										</li>
										<div align="center"></div>
									</c:forEach>




								</ul>
							</c:when>
						</c:choose>

					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>