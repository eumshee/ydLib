<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
#name{
width: 80px;
text-align: center;
}

.btn{
	margin-top: 5px;
	border: 1px solid black;
	border-radius: 10px;
}
</style>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('images/hero_1.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">회원 관리</h1>
				<div class="custom-breadcrumbs">
					<a href="adminPage.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>회원 관리</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 상단배너 end -->

<section class="site-section block__18514" id="next-section">
	<div class="container">
	<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">회원관리</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>성별</th>
									<th>생년월일</th>
									<th>전화번호</th>
									<th>주소</th>
									<th>E-mail</th>
									<th>회원등급</th>
									<th>처리과정</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>성별</th>
									<th>생년월일</th>
									<th>전화번호</th>
									<th>주소</th>
									<th>E-mail</th>
									<th>회원등급</th>
									<th>처리과정</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${users }" var="vo">
									<form action="adminMemberUpdate.do" method="post">
										<tr>
											<td>${vo.user_Id }<input type="hidden" id="user_Id" name="user_Id" value="${vo.user_Id }"></td>
											<td><input type="text" id="user_Name" name="user_Name" value="${vo.user_Name }"></td>
											<td>
												<c:if test="${vo.user_Gender eq 'M'}">남자</c:if>
												<c:if test="${vo.user_Gender eq 'W'}">여자</c:if>
											</td>
											<td>${vo.user_Birth }</td>
											<td>${vo.user_Phone }</td>
											<td width="20%">${vo.user_Addr }</td>
											<td>${vo.user_Email }</td>
											<td>${vo.user_Gubun }</td>
											<td><button class="btn" type="submit">수정</button><br>
											<button class="btn" type="button" onclick="location.href='adminMemberDelete.do?user_Id=${vo.user_Id}'">삭제</button>
											</td>
										</tr>
									</form>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
	</div>
</section>