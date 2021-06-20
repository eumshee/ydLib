<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
	th, td {
		vertical-align: middle !important;
	}
</style>
<script>

	function bookOneUpdate() {
		if ($('#book_Gubun').val() == "") {
			frm.book_Gubun.focus();
			alert('분류를 입력하세요.');
			return;
		}
		if ($('#book_Title').val() == "") {
			frm.book_Title.focus();
			alert('제목을 입력하세요.');
			return;
		}
		if ($('#book_Aut').val() == "") {
			frm.book_Aut.focus();
			alert('저자를 입력하세요.');
			return;
		}
		if ($('#book_Pub').val() == "") {
			frm.book_Pub.focus();
			alert('출판사를 입력하세요.');
			return;
		}
		if ($('#book_Pubdate').val() == "") {
			frm.book_Pubdate.focus();
			alert('출판일을 입력하세요.');
			return;
		}
		if ($('#book_Indate').val() == "") {
			frm.book_Indate.focus();
			alert('입고일을 입력하세요.');
			return;
		}
		if ($('#book_Isbn').val() == "") {
			frm.book_Isbn.focus();
			alert('ISBN을 입력하세요.');
			return;
		}
		frm.submit();
	}
	
	function bookOneDelete(num) {
		let delChk = confirm("삭제하시겠습니까?");
		if (delChk) {
			location.href='bookOneDelete.do?book_Num='+num;
		}
	}
	
	function bkDetail(num,isbn) {
		location.href='bookDetailManage.do?book_Num='+num+'&book_Isbn='+isbn;
	}
	
	function bigoSubmit(num,isbn) {
		bigo.book_Bigo.value = $('#bookNum'+num+' option:selected').val();
		bigo.book_Num.value = num;
		bigo.book_Isbn.value = isbn;
		bigo.submit();
	}

	
</script>

<form id="bigo" action="bookManageBigoUpdate.do" method="post">
	<input type="text" name="book_Bigo" hidden="">
	<input type="text" name="book_Num" hidden="">
	<input type="text" name="book_Isbn" hidden="">
</form>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">관리자페이지</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span>
					<a href="adminPage.do"><span
						class="text-white"><strong>관리자</strong></span></a>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 도서조회폼 -->
<section class="site-section">
	<div class="container-fluid" style="width:80%">
		<div align="right">
			<div class="col-lg-3">
				<span class="col-3">
					<button type="button" class="btn btn-primary text-white btn-search"
						onclick="bookOneDelete(${bookMgOne.book_Num })">
						<span class="icon-minus mx-auto"></span>&nbsp;삭제
					</button>
				</span> <span class="col-3">
					<button type="button" class="btn btn-primary text-white btn-search"
						onclick="bookOneUpdate()">
						<span class="icon-pencil-square mx-auto"></span>&nbsp;수정
					</button>
				</span>
			</div>
		</div>
		<div class="row mb-5">
			<div class="col-lg-12">
				<form class="p-4 p-md-5 border rounded" id="frm"
					action="bookOneUpdate.do" method="post">
					<h3 class="text-black mb-5 border-bottom pb-2">도서정보</h3>
					<table style="width: 100%;">
						<tr>
							<td rowspan="16" style="width: 50%; text-align: center;"><img
								src="${bookMgOne.book_Img }" width="70%"></td>
							<th class="form-group" style="width: 10%;"><label
								for="book_Subject">책주제</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td style="width: 40%;"><select
								class="selectpicker border rounded" id="book_Subject"
								name="book_Subject" data-style="btn-black"
								data-live-search="true" title="Select Subject">
									<option value="0"
										<c:if test="${bookMgOne.book_Subject eq '0'}">selected</c:if>>0</option>
									<option value="1"
										<c:if test="${bookMgOne.book_Subject eq '1'}">selected</c:if>>1</option>
									<option value="2"
										<c:if test="${bookMgOne.book_Subject eq '2'}">selected</c:if>>2</option>
									<option value="3"
										<c:if test="${bookMgOne.book_Subject eq '3'}">selected</c:if>>3</option>
									<option value="4"
										<c:if test="${bookMgOne.book_Subject eq '4'}">selected</c:if>>4</option>
									<option value="5"
										<c:if test="${bookMgOne.book_Subject eq '5'}">selected</c:if>>5</option>
									<option value="6"
										<c:if test="${bookMgOne.book_Subject eq '6'}">selected</c:if>>6</option>
									<option value="7"
										<c:if test="${bookMgOne.book_Subject eq '7'}">selected</c:if>>7</option>
									<option value="8"
										<c:if test="${bookMgOne.book_Subject eq '8'}">selected</c:if>>8</option>
									<option value="9"
										<c:if test="${bookMgOne.book_Subject eq '9'}">selected</c:if>>9</option>
							</select></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Gubun">분류</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Gubun"
								name="book_Gubun" value="${bookMgOne.book_Gubun }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Num">번호</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Num"
								name="book_Num" value="${bookMgOne.book_Num }"
								readonly="readonly"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Title">제목</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Title"
								name="book_Title" value="${bookMgOne.book_Title }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Aut">저자</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Aut"
								name="book_Aut" value="${bookMgOne.book_Aut }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Pub">출판사</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Pub"
								name="book_Pub" value="${bookMgOne.book_Pub }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Pubdate">출판일</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control"
								id="book_Pubdate" name="book_Pubdate" placeholder="yyyy-mm-dd"
								value="${fn:substring(bookMgOne.book_Pubdate,0,10) }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Indate">입고일</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Indate"
								name="book_Indate" placeholder="yyyy-mm-dd"
								value="${fn:substring(bookMgOne.book_Indate,0,10) }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Location">위치</label>
							<td><input type="text" class="form-control"
								id="book_Location" name="book_Location"
								placeholder="1 ~ 4(012/345/679/8)"
								value="${bookMgOne.book_Location }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Byn">반납여부</label>
							<td><input type="text" class="form-control" id="book_Byn"
								name="book_Byn" readonly="readonly"
								value="${bookMgOne.book_Byn }"></td>
						</tr>
						<c:if test="${!empty bookMgOne.return_Duedate }">
							<tr>
								<th class="form-group"><label for="">반납예정일</label>
								<td><input type="text" class="form-control"
									readonly="readonly"
									value="${fn:substring(bookMgOne.return_Duedate,0,10) }"></td>
							</tr>
						</c:if>
						<tr>
							<th class="form-group"><label for="book_Img">책사진</label>
							<td><input type="text" class="form-control" id="book_Img"
								name="book_Img" placeholder="이미지링크"
								value="${bookMgOne.book_Img }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Desc">책설명</label>
							<td><input type="text" class="form-control" id="book_Desc"
								name="book_Desc" placeholder="비어있습니다."
								value="${bookMgOne.book_Desc }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Isbn">ISBN</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="book_Isbn"
								name="book_Isbn" value="${bookMgOne.book_Isbn }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="book_Bigo">비고</label>
							<td><input type="text" class="form-control" id="book_Bigo"
								name="book_Bigo" placeholder="비어있습니다."
								value="${bookMgOne.book_Bigo }"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="">예약상태</label>
							<c:choose>
								<c:when test="${!empty bookMgOne.yeyak_Processing }">
									<td>
										<input type="text" class="form-control" readonly="readonly"
										value="${bookMgOne.yeyak_Processing }">
									</td>
								</c:when>
								<c:otherwise>
									<td>
										<input type="text" class="form-control" readonly="readonly"
										value="-">
									</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div align="center">
			<div class="col-lg-3">
				<div class="col-5">
					<button type="button" class="btn btn-primary text-white btn-search"
						onclick="location.href='bookManagement.do'">
						<span class="icon-reply-all mx-auto"></span>&nbsp;목록보기
					</button>
				</div>
			</div>
		</div>

		<c:if test="${!empty bookMgOver }">
			<h3 class="text-black my-5 border-bottom pb-2">동일도서</h3>
			<table class="table" style="width: 100%;">
				<tr>
					<th class="form-group">번호</th>
					<th class="form-group">제목</th>
					<th class="form-group">ISBN</th>
					<th class="form-group">반납여부</th>
					<th class="form-group">비고</th>
					<th class="form-group"></th>
				</tr>
				<c:forEach items="${bookMgOver }" var="vo">
					<tr>
						<td onclick="bkDetail(${vo.book_Num},'${vo.book_Isbn }')">${vo.book_Num}</td>
						<td onclick="bkDetail(${vo.book_Num},'${vo.book_Isbn }')">${vo.book_Title}</td>
						<td onclick="bkDetail(${vo.book_Num},'${vo.book_Isbn }')">${vo.book_Isbn}</td>
						<td onclick="bkDetail(${vo.book_Num},'${vo.book_Isbn }')">${vo.book_Byn}</td>
						<td><select id="bookNum${vo.book_Num}">
								<option hidden=""
									<c:if test="${vo.book_Bigo eq ''}">selected</c:if>></option>
								<option value=""></option>
								<option value="분실"
									<c:if test="${vo.book_Bigo eq '분실'}">selected</c:if>>분실</option>
								<option value="훼손"
									<c:if test="${vo.book_Bigo eq '훼손'}">selected</c:if>>훼손</option>
								<option value="서가정리"
									<c:if test="${vo.book_Bigo eq '서가정리'}">selected</c:if>>서가정리</option>
						</select>
							<button type="button" id="bigoUpdate${vo.book_Num}" onclick="bigoSubmit(${vo.book_Num},'${vo.book_Isbn }')">수정</button>
						</td>
						<td>
							<button type="button" onclick="bookOneDelete(${vo.book_Num})">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>


	</div>
</section>

