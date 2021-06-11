<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/hero_1.jpg');"
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
							<li class="sideactive"><a href="#">공지사항</a></li>
							<li><a href="#">묻고답하기</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->
			<div class="col-lg-8">
				<table class="table">
					<tr>
						<td colspan="4" align="left"><h2>${vo.notice_Title}</h2></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td width="70%" align="left">${vo.notice_Date}</td>
						<td>조회수</td>
						<td>${vo.notice_Hit}</td>
					</tr>
					<tr>
						<td colspan="4" align="left">${vo.notice_Content}</td>
					</tr>
					<tr>
					<td colspan="5" align="left">첨부파일 : ${vo.notice_File }</td>
					</tr>
				</table>

				<div align="center">
					<button type="submit" class="btn btn-light">삭제</button>
					<button type="reset" class="btn btn-light">수정</button>
					<br>
				</div>
				<div align="right">
					<button type="button" onclick="location.href='noticeList.do'"
						class="btn btn-light">목록으로</button>
				</div>
			</div>
		</div>
	</div>
</section>

