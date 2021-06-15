<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<style>
.pagination {
	display: inline-block;
	margin: auto;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
}

.pagination a.active {
	background-color: lightgray;
	color: #fff;
	border: 1px solid lightgray;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}

div.dataTables_wrapper div.dataTables_paginate {
	margin-left: -10%;
	white-space: nowrap;
	text-align: left;
}
</style>
<script>
function formSubmit(id, open, writer) {
	var loginId = '${loginUserVO.user_Id}'
	if (open == 'N') {
		if (loginId == writer || loginId == 'admin') {
			frm.board_Id.value = id;
			console.log(id);
			frm.submit();
		} else {
		alert("비밀글은 작성자만 조회할 수 있습니다.");
		}
	} else {
		frm.board_Id.value = id;
		console.log(id+"3");
		frm.submit();
		}
	}

$(document).ready(function() {
	var table = $('#dataTable1').DataTable({
	   ordering: false,
	   serverSide: false
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
				<h1 class="text-white font-weight-bold">묻고답하기</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
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
				<form id="frm" action="boardSelect.do" method="post">
					<input type="hidden" id="board_Id" name="board_Id">
				</form>
				<!-- DataTales Example -->
				<table class="table table-bordered" id="dataTable1"
					style="width: 100%; cellspacing: 0">
					<thead>
						<tr>
							<th>순번</th>
							<th width="50%">제목</th>
							<th>상태</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="vo" items="${board }">
						<input type="hidden" id="${vo.board_Id}" name="${vo.board_Id}" value="${vo.board_Open }">
							<tr onclick="formSubmit(${vo.board_Id}, '${vo.board_Open }', '${vo.board_Writer }')">
								<td>${vo.board_Id }</td>
								<td align="left">
									<c:if test="${vo.board_Open eq 'N'}">
									${vo.board_Title } <span class="icon-lock"></span>
									</c:if>
									<c:if test="${empty vo.board_Open}">
									${vo.board_Title }
									</c:if>
								</td>
								<td>
									<c:if test="${vo.board_Reply ge 1}">
									완료
									</c:if>
									<c:if test="${vo.board_Reply eq 0}">
									대기
									</c:if>
								</td>
								<td>${fn:substring(vo.board_Name,0,fn:length(vo.board_Name)-2)}**</td>
								<td>${vo.board_Date }</td>
								<td>${vo.board_Hit }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div align="right">
					<a href="boardInsertForm.do"><button type="submit"
							class="btn btn-primary text-white btn-search">글쓰기</button></a><br>
				</div>
			</div>
		</div>
	</div>
</section>