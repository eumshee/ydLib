<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script>
function boardDelete(num) {
	let delChk = confirm("삭제하시겠습니까?");
	if (delChk) {
		location.href='boardDelete.do?board_Id='+num;
	}
}

function boardUpdate() {
	if ($('#board_Title').val() == "") {
		frmUpdate.board_Title.focus();
		alert('제목을 입력하세요.');
		return;
	}
	if ($('#board_Content').val() == "") {
		frmUpdate.board_Content.focus();
		alert('내용을 입력하세요.');
		return;
	}
	console.log($('#board_Title').val());
	console.log($('#board_Content').val());
	console.log($('#board_Id').val());
	frmUpdate.submit();
}

$(function() {CKEDITOR.replace('board_Content',
		{
			filebrowserUploadUrl : '${pageContext.request.contextPath}/ckupload',
			height : '400px',
			width : '100%'
			});
	});
	
</script>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">공지사항</h1>
				<div class="custom-breadcrumbs">
					<a href="#">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>열린공간</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<!-- 왼쪽네비 -->
			<div class="col-lg-3 mr-3">
				<div class="rounded">
					<div class="sidenav">
						<ul class="list-unstyled">
							<li class="sideactive"><a href="noticeList.do">공지사항</a></li>
							<li><a href="boardList.do">묻고답하기</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<form id="frmUpdate" action="boardUpdate.do" method="post">
					<input type="hidden" id="board_Id" name="board_Id" value="${vo.board_Id }">
				<table class="table">
					<tr>
						<td colspan="6" align="left">
						<h2><input type="text" class="form-control" id="board_Title" name="board_Title" value="${vo.board_Title }"></h2></td>
					</tr>
					<tr align="left">
						<td>작성일</td>
						<td>${vo.board_Date}</td>
						<td>작성자</td>
						<td>${vo.board_Writer}</td>
						<td>조회수</td>
						<td>${vo.board_Hit}</td>
					</tr>
					<tr>
						<td colspan="6" align="left"><textarea id="board_Content" name="board_Content" >${vo.board_Content}</textarea></td>
					</tr>
				</table>
				</form>
				<div align="center">
					<button type="button" onclick="boardDelete(${vo.board_Id})" class="btn btn-light">삭제</button>
					<button type="button" onclick="boardUpdate()" class="btn btn-light">수정</button>
					<br>
				</div>
				<div align="right">
					<button type="button" onclick="location.href='boardList.do'"
						class="btn btn-light">목록으로</button>
				</div>
			</div>
		</div>
	</div>
</section>

