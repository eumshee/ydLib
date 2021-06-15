<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

tr:hover {
	background-color: #F8F8F8;	
}
</style>
<script>
function formSubmit(id) {
	frm.notice_Id.value = id;
	console.log(id);
	frm.submit();
}

$(document).ready(function() {
	var table = $('#dataTable1').DataTable({
	   order: [ [ 0, "desc" ] ],
	   ordering: true,
	   serverSide: false
	   });
	});

</script>

<style>
@font-face {
	font-family: 'S-CoreDream-3Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff') !important;
	font-weight: normal;
	font-style: normal;
}

div.dataTables_wrapper div.dataTables_paginate {
    margin-left: -10%;
    white-space: nowrap;
    text-align: left;
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
							<li class="sideactive"><a href="noticeList.do">공지사항</a></li>
							<li><a href="boardList.do">묻고답하기</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<form id="frm" action="noticeSelect.do" method="post">
					<input type="hidden" id="notice_Id" name="notice_Id">
				</form>
				<!-- DataTales Example -->
				<table class="table table-bordered" id="dataTable1"
					style="width: 100%; cellspacing: 0">
					<thead>
						<tr>
							<th>순번</th>
							<th width="50%">제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="vo" items="${notice }">
							<tr onclick="formSubmit(${vo.notice_Id})">
								<td>${vo.notice_Id }</td>
								<td>${vo.notice_Title }</td>
								<td>관리자</td>
								<td>${vo.notice_Date }</td>
								<td>${vo.notice_Hit }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
					<c:if test="${loginUserVO.user_Id eq 'admin'}">
						<div align="right">
						<a href="noticeInsertForm.do"><button type="submit"class="btn btn-primary text-white btn-search">글쓰기</button></a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
</section>