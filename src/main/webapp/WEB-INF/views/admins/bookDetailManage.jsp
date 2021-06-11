<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- 도서입력폼 -->
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
					<table style="width: 100%;">
						<tr>
							<td class="form-group"><label for="book_Subject">책주제&nbsp;</label>
								<select class="selectpicker border rounded" id="book_Subject"
								name="book_Subject" data-style="btn-black"
								data-live-search="true" title="Select Subject">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
							</select></td>
							<td rowspan="12" style="width: 50%; text-align: center;">
								<label for="company-website-tw d-block">Upload Image</label><br>
								<label class="btn btn-primary btn-md btn-file">Browse File
									<input type="file">
								</label>
							</td>
						</tr>
						<tr>
							<td><label for="book_Gubun">분류</label> <input
								type="text" class="form-control" id="book_Gubun"
								name="book_Gubun" value="${bookMgOne.book_Gubun }"></td>
						</tr>
						<tr>
							<td><label for="book_Num">번호</label> <input
								type="text" class="form-control" id="book_Num"
								name="book_Num" value="${bookMgOne.book_Num }"></td>
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
								class="form-control" id="book_Pub" name="book_Pub"></td>
						</tr>
						<tr>
							<td><label for="book_Pubdate">출판일</label> <input type="date"
								class="form-control" id="book_Pubdate" name="book_Pubdate"
								 value="${bookMgOne.book_Pubdate }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Indate">입고날</label> <input type="date"
								class="form-control" id="book_Indate" name="book_Indate"
								 value="${bookMgOne.book_Indate }">
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
								 value="${bookMgOne.book_Desc }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Isbn">isbn</label> <input type="text"
								class="form-control" id="book_Isbn" name="book_Isbn"
								 value="${bookMgOne.book_Isbn }">
							</td>
						</tr>
						<tr>
							<td><label for="book_Bigo">비고</label> <input type="text"
								class="form-control" id="book_Bigo" name="book_Bigo"
								 value="${bookMgOne.book_Bigo }">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
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
				<tr>
					<td>1</td>
					<td>현명한 투자자</td>
					<td>5456821</td>
					<td>N</td>
					<td></td>
					<td>
						<button type="button">삭제</button>
					</td>
				</tr>
			</table>

		
	</div>
</section>

