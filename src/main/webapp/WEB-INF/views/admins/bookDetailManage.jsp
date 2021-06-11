<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/hero_1.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">도서관리</h1>
				<div class="custom-breadcrumbs">
					<a href="adminPage.do">Admin</a> <span class="mx-2 slash">/</span>
					<span class="text-white"><strong>BookManagement</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 도서조회폼 -->
<section class="site-section">
	<div class="container">
		<div align="right">
			<div class="col-lg-3">
				<div class="col-4">
					<a href="#" class="btn btn-block btn-primary btn-md">수정</a>
				</div>
			</div>
		</div>
		<div class="row mb-5">
			<div class="col-lg-12">
				<form class="p-4 p-md-5 border rounded" method="post">
					<h3 class="text-black mb-5 border-bottom pb-2">Book Detail</h3>
					<table border="1" style="width: 100%;">
						<tr>
							<td rowspan="16" style="width: 50%; text-align: center;">
								<label for="company-website-tw d-block">Upload Image</label><br>
								<label class="btn btn-primary btn-md btn-file">Browse File
									<input type="file">
								</label>
								<img src="${bookMgOne.book_Img }" width="50%">
							</td>
							<td class="form-group"><label for="book_Subject">책주제&nbsp;</label>
								<select class="selectpicker border rounded" id="book_Subject"
								name="book_Subject" data-style="btn-black"
								data-live-search="true" title="Select Subject">
									<option value="0"
									<c:if test="${bookMgOne.book_Subject eq '0'}">selected</c:if>
									>0</option>
									<option value="1"
									<c:if test="${bookMgOne.book_Subject eq '1'}">selected</c:if>
									>1</option>
									<option value="2"
									<c:if test="${bookMgOne.book_Subject eq '2'}">selected</c:if>
									>2</option>
									<option value="3"
									<c:if test="${bookMgOne.book_Subject eq '3'}">selected</c:if>
									>3</option>
									<option value="4"
									<c:if test="${bookMgOne.book_Subject eq '4'}">selected</c:if>
									>4</option>
									<option value="5"
									<c:if test="${bookMgOne.book_Subject eq '5'}">selected</c:if>
									>5</option>
									<option value="6"
									<c:if test="${bookMgOne.book_Subject eq '6'}">selected</c:if>
									>6</option>
									<option value="7"
									<c:if test="${bookMgOne.book_Subject eq '7'}">selected</c:if>
									>7</option>
									<option value="8"
									<c:if test="${bookMgOne.book_Subject eq '8'}">selected</c:if>
									>8</option>
									<option value="9"
									<c:if test="${bookMgOne.book_Subject eq '9'}">selected</c:if>
									>9</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><label for="book_Gubun">분류</label>
							<input type="text" class="form-control" id="book_Gubun"
								name="book_Gubun" value="${bookMgOne.book_Gubun }"></td>
						</tr>
						<tr>
							<td><label for="book_Num">번호</label> <input
								type="text" class="form-control" id="book_Num"
								name="book_Num" value="${bookMgOne.book_Num }"
								readonly="readonly"></td>
						</tr>
						<tr>
							<td><label for="book_Title">제목</label> <input type="text"
								class="form-control" id="book_Title" name="book_Title"
								value="${bookMgOne.book_Title }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Aut">저자</label> <input type="text"
								class="form-control" id="book_Aut" name="book_Aut"
								 value="${bookMgOne.book_Aut }"></td>
						</tr>
						<tr>
							<td><label for="book_Pub">출판사</label> <input type="text"
								class="form-control" id="book_Pub" name="book_Pub"
								value="${bookMgOne.book_Pub }">
	
							</td>
						</tr>
						<tr>
							<td><label for="book_Pubdate">출판일</label> <input type="text"
								class="form-control" id="book_Pubdate" name="book_Pubdate"
								placeholder="yyyy-mm-dd"
								 value="${fn:substring(bookMgOne.book_Pubdate,0,10) }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Indate">입고날</label> <input type="text"
								class="form-control" id="book_Indate" name="book_Indate"
								placeholder="yyyy-mm-dd"
								 value="${fn:substring(bookMgOne.book_Indate,0,10) }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Location">위치</label> <input type="text"
								class="form-control" id="book_Location" name="book_Location"
								 value="${bookMgOne.book_Location }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Byn">반납여부</label> <input type="text"
								class="form-control" id="book_Byn" name="book_Byn"
								 value="${bookMgOne.book_Byn }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Img">책사진</label> <input type="text"
								class="form-control" id="book_Img" name="book_Img"
								 value="${bookMgOne.book_Img }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Desc">책설명</label> <input type="text"
								class="form-control" id="book_Desc" name="book_Desc"
								placeholder="비어있습니다."
								 value="${bookMgOne.book_Desc }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Isbn">ISBN</label> <input type="text"
								class="form-control" id="book_Isbn" name="book_Isbn"
								 value="${bookMgOne.book_Isbn }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Bigo">비고</label> <input type="text"
								class="form-control" id="book_Bigo" name="book_Bigo"
								placeholder="비어있습니다."
								value="${bookMgOne.book_Bigo }">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
		<c:if test="${!empty bookMgOver }">
			<h3 class="text-black my-5 border-bottom pb-2">Book List</h3>
				<table style="width: 100%;">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>ISBN</th>
						<th>반납여부</th>
						<th>비고</th>
						<th></th>
					</tr>
					<c:forEach items="${bookMgOver }" var="vo">
						<tr>
							<td>${vo.book_Num}</td>
							<td>${vo.book_Title}</td>
							<td>${vo.book_Isbn}</td>
							<td>${vo.book_Byn}</td>
							<td>
							<select id="bookStatus">
									<option hidden=""
									<c:if test="${vo.book_Bigo eq ''}">selected</c:if>
									></option>
									<option value="분실"
									<c:if test="${vo.book_Bigo eq '분실'}">selected</c:if>
									>분실</option>
									<option value="훼손"
									<c:if test="${vo.book_Bigo eq '훼손'}">selected</c:if>
									>훼손</option>
							</select>
							<button type="button">수정</button>
							</td>
							<td>
								<button type="button">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</table>
		
		</c:if>

		
	</div>
</section>

