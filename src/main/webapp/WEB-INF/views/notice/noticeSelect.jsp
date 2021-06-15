<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script>
function noticeDelete(num) {
	let delChk = confirm("삭제하시겠습니까?");
	if (delChk) {
		location.href='noticeDelete.do?notice_Id='+num;
	}
}

function noticeUpdate() {
	if ($('#notice_Title').val() == "") {
		frmUpdate.notice_Title.focus();
		alert('제목을 입력하세요.');
		return;
	}
	if ($('#notice_Content').val() == "") {
		frmUpdate.notice_Content.focus();
		alert('내용을 입력하세요.');
		return;
	}
	console.log($('#notice_Title').val());
	console.log($('#notice_Content').val());
	console.log($('#notice_Id').val());
	frmUpdate.submit();
}

$(function() {CKEDITOR.replace('notice_Content',
		{
			filebrowserUploadUrl : '${pageContext.request.contextPath}/ckupload',
			height : '400px',
			width : '100%'
			});
	});
	
</script>

<style>
h4 {
	font-weight: bold;
}
</style>

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
				<form id="frmUpdate" action="noticeUpdate.do" method="post">
					<input type="hidden" id="notice_Id" name="notice_Id" value="${vo.notice_Id }">
				<table class="table">
					<tr>
						<td colspan="4" align="left">
						<c:choose>
							<c:when test="${loginUserVO.user_Id eq 'admin'}">
								<input type="text" class="form-control" id="notice_Title" name="notice_Title" value="${vo.notice_Title}">
							</c:when>
							<c:otherwise>
								<h4>${vo.notice_Title}</h4>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<th>작성일</th>
						<td width="70%" align="left">${vo.notice_Date}</td>
						<th>조회수</th>
						<td>${vo.notice_Hit}</td>
					</tr>
					<tr>
						<td colspan="4" align="left">
						<c:choose>
							<c:when test="${loginUserVO.user_Id eq 'admin'}">
								<textarea id="notice_Content" name="notice_Content">${vo.notice_Content}</textarea>
							</c:when>
							<c:otherwise>
								${vo.notice_Content}
							</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr>
					<th>첨부파일</th>
					<td colspan="4" align="left"><a href="fileDownload.do?notice_File=${vo.notice_File}">${vo.notice_File }</a></td>
					</tr>
				</table>
				</form>
				<c:if test="${loginUserVO.user_Id eq 'admin'}">
					<div align="center">
						<button type="button" onclick="noticeDelete(${vo.notice_Id})" class="btn btn-light">삭제</button>
						<button type="button" onclick="noticeUpdate()" class="btn btn-light">수정</button>
						<br>
					</div>
				</c:if>
				<div align="right">
					<button type="button" onclick="location.href='noticeList.do'" class="btn btn-light">목록으로</button>
				</div>
			</div>
		</div>
	</div>
</section>

