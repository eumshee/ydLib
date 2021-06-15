<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
	frmUpdate.submit();
}

function replyInsert() {
	console.log($('#board_Id').val());
	replyInsertForm.submit();
}

function replyDelete(num) {
	let delChk = confirm("삭제하시겠습니까?");
	if (delChk) {
		frmRDelete.submit();
	}
}

function replyUpdate() {
	if ($('#re_Title').val() == "") {
		frmRUpdate.re_Title.focus();
		alert('제목을 입력하세요.');
		return;
	}
	if ($('#re_Content').val() == "") {
		frmRUpdate.re_Content.focus();
		alert('내용을 입력하세요.');
		return;
	}
	frmRUpdate.submit();
}

$(function() {
		if (${loginUserVO.user_Id eq vo.board_Writer}) {
			CKEDITOR.replace('board_Content',{
				filebrowserUploadUrl : '${pageContext.request.contextPath}/ckupload',
				height : '400px',
				width : '100%'
			});
		} else if (${loginUserVO.user_Id eq 'admin'}) {
			CKEDITOR.replace('re_Content',{
				filebrowserUploadUrl : '${pageContext.request.contextPath}/ckupload',
				height : '400px',
				width : '100%'
			});
		}
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
				<h1 class="text-white font-weight-bold">묻고답하기</h1>
				<div class="custom-breadcrumbs">
					<a href="index.do">Home</a> <span class="mx-2 slash">/</span> <span
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
							<li><a href="noticeList.do">공지사항</a></li>
							<li class="sideactive"><a href="boardList.do">묻고답하기</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
			<div align="right">
				<button type="button" onclick="location.href='boardList.do'" class="btn btn-light">목록으로</button><br><br>
			</div>
				<form id="frmUpdate" action="boardUpdate.do" method="post">
					<input type="hidden" id="board_Id" name="board_Id" value="${vo.board_Id }">
				<!-- 질문 게시글 -->
				<table class="table">
					<tr>
						<td colspan="6" align="left">
						<c:choose>
							<c:when test="${loginUserVO.user_Id eq vo.board_Writer}">
								<input type="text" class="form-control" id="board_Title" name="board_Title" value="${vo.board_Title }">
							</c:when>
							<c:otherwise>
								<h4>${vo.board_Title }</h4>
							</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr align="left">
						<th width="10%">작성자</th>
						<td>${fn:substring(vo.board_Name,0,fn:length(vo.board_Name)-2)}**</td>
						<th width="10%">작성일</th>
						<td>${vo.board_Date}</td>
						<th width="10%">조회수</th>
						<td>${vo.board_Hit}</td>
					</tr>
					<tr>
						<c:choose>
						<c:when test="${loginUserVO.user_Id eq vo.board_Writer}">
							<td colspan="6" align="left"><textarea id="board_Content" name="board_Content" required="required">${vo.board_Content}</textarea></td>
						</c:when>
						<c:otherwise>
						<td colspan="6" align="left">${vo.board_Content}</td>
						</c:otherwise>
						</c:choose>
					</tr>
				</table>
				</form>
				<form id="replyInsertForm" action="replyInsertForm.do" method="post">
					<input type="hidden" id="board_Id" name="board_Id" value="${vo.board_Id }">
					<input type="hidden" id="board_Title" name="board_Title" value="${vo.board_Title }">
					<input type="hidden" id="board_Content" name="board_Content" value="${vo.board_Content }">
				</form>
				<c:if test="${loginUserVO.user_Id eq vo.board_Writer}">
					<div align="center">
						<button type="button" onclick="boardDelete(${vo.board_Id})" class="btn btn-light">삭제</button>
						<button type="button" onclick="boardUpdate()" class="btn btn-light">수정</button>
					</div>
				</c:if>
				<br><br>
				<c:if test="${loginUserVO.user_Id eq 'admin' and reply.re_Num eq null}">
						<div align="right">
							<button type="button" onclick="replyInsert(${vo.board_Id})" class="btn btn-primary text-white">답변달기</button>
						</div>
						<br>
				</c:if>
				<!-- 답글영역 -->
				<c:choose>
					<c:when test="${reply.re_Num eq null}">
						<div align="center">
							<p>아직 작성된 답변이 없습니다.</p>
							<p>문의사항이 있으시면 ☎053-421-2460로 문의주시면 답변드리겠습니다.</p>
						</div>
					</c:when>
					<c:otherwise>
						<form id="frmRDelete" action="replyDelete.do" method="post">
							<input type="hidden" id="re_Num" name="re_Num" value="${reply.re_Num}">
							<input type="hidden" id="re_Bnum" name="re_Bnum" value="${reply.re_Bnum}">
						</form>
						<form id="frmRUpdate" action="replyUpdate.do" method="post">
							<input type="hidden" id="re_Num" name="re_Num" value="${reply.re_Num}">
							<input type="hidden" id="re_Bnum" name="re_Bnum" value="${reply.re_Bnum}">
						<!-- 답글 게시물 출력 -->
						<table class="table">
							<tr>
								<td colspan="6" align="left">
									<c:choose>
										<c:when test="${loginUserVO.user_Id eq 'admin'}">
											<input type="text" class="form-control" id="re_Title" name="re_Title" value="${reply.re_Title }">
										</c:when>
										<c:otherwise>
											<h4>${reply.re_Title }</h4>
										</c:otherwise>
									</c:choose>
							</tr>
							<tr align="left">
								<th width="10%">작성자</th>
								<td>관리자</td>
								<th width="10%">작성일</th>
								<td width="57%">${reply.re_Date}</td>
							</tr>
							<tr>
								<c:choose>
									<c:when test="${loginUserVO.user_Id eq 'admin'}">
										<td colspan="4" ><textarea id="re_Content" name="re_Content">${reply.re_Content}</textarea></td>
									</c:when>
									<c:otherwise>
										<td colspan="4" align="left">${reply.re_Content}</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</table>
							<c:if test="${loginUserVO.user_Id eq 'admin'}">
								<div align="center">
									<button type="button" onclick="replyDelete(${reply.re_Num}, ${reply.re_Bnum })" class="btn btn-light">답변삭제</button>
									<button type="button" onclick="replyUpdate(${reply.re_Num}, ${reply.re_Bnum })" class="btn btn-light">답변수정</button>
								</div>
							</c:if>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</section>

