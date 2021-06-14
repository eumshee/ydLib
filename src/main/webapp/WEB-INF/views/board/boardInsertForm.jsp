<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script>

$(function() {CKEDITOR.replace('board_Content',
		{
			filebrowserUploadUrl : '${pageContext.request.contextPath}/ckupload',
			height : '500px',
			width : '100%'
			});
	});
	
</script>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">묻고답하기</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span>
					<span class="text-white"><strong>열린공간</strong></span>
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
				<form class="p-4 p-md-5 border rounded" action="boardInsert.do" method="post">
					<h3 class="text-black mb-5 border-bottom pb-2">질문글 작성</h3>
					<div class="form-group">
						<label for="board_Title">글 제목</label> <input type="text"
							class="form-control" id="board_Title" name="board_Title" placeholder="글 제목">
					</div>
					<div class="form-group">
						<label for="board_Content">글 내용</label> <textarea 	class="form-control" id="board_Content" name="board_Content"></textarea>

					</div>
					<div class="form-group">
						<input type="checkbox" id="board_Open" name="board_Open" value="N"><label for="board_Open">&nbsp; 비밀글 체크 시 작성자와 관리자만 열람할 수 있습니다. </label> 
					</div>
					
					<div align="center">
						<button type="reset" class="btn btn-light">작성취소</button>
						<button type="submit" class="btn btn-primary text-white">작성하기</button><br>
					</div>
					<div align="right">
						<button type="button" onclick="location.href='boardList.do'" class="btn btn-light">목록으로</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>