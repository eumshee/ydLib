<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
	th, td {
		vertical-align: middle !important;
	}
	 .col-md-12 a {
	 	font-size: 1em;
	 	color: white;
	 	text-decoration: none;
 	}
	 .col-md-12 a:hover { color: #89ba16; }
</style>
<script>
		function bigoSubmit(userId,wishId) {
			Process.wish_Processing.value = $('#WishId'+wishId+' option:selected').val();
			Process.user_Id.value = userId;
			Process.wish_Id.value = wishId;
			Process.submit();
		}
</script>
<form id="Process" action="wishProcessUpdate.do" method="post">
	<input type="text" id="wish_Processing" name="wish_Processing" hidden="">
	<input type="text" id="user_Id" name="user_Id" hidden="">
	<input type="text" id="wish_Id" name="wish_Id" hidden="">
</form>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/hero_1.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">희망도서관리</h1>
			</div>
			<div class="col-md-12" align="center">
				<span><a href="memberManagemant.do">회원목록관리</a></span>&nbsp;&nbsp;
				<span><a href="loanreManagemant.do">대출/반납관리</a></span>&nbsp;&nbsp;
				<span><a href="yeyakmanagemant.do">예약도서관리</a></span>&nbsp;&nbsp;
				<span><a href="wishManagement.do" style="color:#89ba16;">희망도서관리</a></span>&nbsp;&nbsp;
				<span><a href="bookManagement.do">장서관리</a></span>&nbsp;&nbsp;
				<span><a href="home.do">홈</a></span>
			</div>
		</div>
	</div>
</section>

<!-- 내용 -->
<section class="site-section" id="next-section">
	<div class="container-fluid" style="width: 80%">

		<div class="row">
			<div class="col-lg-12 mb-4">
				<div class="block__87154 bg-primary">
					<blockquote>
						<p class="text-white">&ldquo;중복신청 된 경우 먼저 신청한 이용자 선정, 이후 신청자는
							순서대로 예약 처리&rdquo;</p>
					</blockquote>
				</div>
			</div>

			<div class="col-lg-13 mb-4">
				<div class="block__87154">
					<blockquote>
						<p>
							&ldquo; 도서관 소장자료, 구입·정리 중인 자료, 품절·절판된 자료, 서지사항이 불명확한 자료, 국외서(원서),
							정기간행물, 전자자료, 시청각자료, 출판된 지 3년 이상 된 자료<br> (당해 연도 포함) 단, 컴퓨터
							·과학·여행 분야는 2년 이상 된 자료, 권당 고가자료 (5만원 이상),3권 이상의 시리즈, 전집류 만화(만화형식
							포함), 판타지,무협,로맨스,인터넷 소설 등, 청소년 정서함양에 부적합한 선정성 및 폭력성을 띤 자료, 신판이 출시된
							구판 자료, 대학교재, 문제집, 수험서, 참고서, 교과서, 워크북, 라이팅북, 팝업북, 악보집,
							참고도서(백과사전,사전류 등), 특정 출판사, 저자, 종교, 단체 관련 자료를 집중적으로 신청한 경우, 희귀자료,
							기관발간물(비매품) 등 정상적인 유통경로로 구입이 어려운 자료, 기타 도서관 소장자료로 부적합 하다고 판단되는 자료
							희망도서 선정에서 제외된 도서 중 필요하다고 판단되는 경우는 정기수서 때 구입할 수도 있음 &rdquo;
						</p>
					</blockquote>
				</div>
			</div>

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">희망도서목록</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable"
							style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th>번호</th>
									<th>신청자</th>
									<th>책제목</th>
									<th>저자</th>
									<th>출판사</th>
									<th>출판연도</th>
									<th>ISBN</th>
									<th>비고</th>
									<th>가격</th>
									<th>신청일</th>
									<th>처리과정</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>번호</th>
									<th>신청자</th>
									<th>책제목</th>
									<th>저자</th>
									<th>출판사</th>
									<th>출판연도</th>
									<th>ISBN</th>
									<th>비고</th>
									<th>가격</th>
									<th>신청일</th>
									<th>처리과정</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${wishMgList }" var="vo">
									<tr>
										<td>${vo.wish_Id }</td>
										<td>${vo.user_Id }</td>
										<td>${vo.wish_Title }</td>
										<td>${vo.wish_Aut }</td>
										<td>${vo.wish_Pub }</td>
										<td>${fn:substring(vo.wish_Pubdate,0,4) }</td>
										<td>
											<c:choose>
												<c:when test="${vo.wish_Isbn eq 0}">-</c:when>
												<c:otherwise>
													${vo.wish_Isbn }
												</c:otherwise>
											</c:choose>
										</td>
										<td>${vo.wish_Bigo }</td>
										<td>${vo.wish_Price }</td>
										<td>${fn:substring(vo.wish_Date,0,10) }</td>
										<td><select id="WishId${vo.wish_Id}">
												<option value="신청"
													<c:if test="${vo.wish_Processing eq '신청'}">selected</c:if>>신청</option>
												<option value="처리"
													<c:if test="${vo.wish_Processing eq '처리'}">selected</c:if>>처리</option>
												<option value="소장"
													<c:if test="${vo.wish_Processing eq '소장'}">selected</c:if>>소장</option>
												<option value="취소"
													<c:if test="${vo.wish_Processing eq '취소'}">selected</c:if>>취소</option>
										</select>
											<button type="button"
												onclick="bigoSubmit('${vo.user_Id}',${vo.wish_Id})">수정</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>