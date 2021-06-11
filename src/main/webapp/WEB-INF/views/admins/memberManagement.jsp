<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script>
function deleteForm(id){
		frm.user_Id.value=id;
		frm.submit();
}

function updateForm(id,name){
	upfrm.user_Id.value=id;
	upfrm.user_Name.value=name;
	console.log(id,name);
	upfrm.submit();
	
}

</script>

<section class="site-section block__18514" id="next-section">

	<form id="upfrm" action ="adminMemberUpdate.do" method="post" onclick="updateForm('${vo.user_Id}','${vo.user_Name })">
		<input type="hidden" id="user_Name"name="user_Name" value="">
		<input type="hidden" id="user_Id"name="user_Id" value="">
	</form>
	
	<form id="frm" action="adminMemberDelete.do" method="post">
		<input type="hidden" id="user_Id" name="user_Id" value="">
	</form>
		
	<div class="container">
		<!-- 검색창 -->
		<form action="adminMemberSearch.do" method="post">
			<div align="right">
				<input type="text" id="user_name" name="user_Name" placeholder="검색할 이름을 입력하세요." size="30">
				<button type="submit" class="btn btn-primary text-white btn-search">
					<span class="icon-search icon mr-2"></span>검색
				</button>
			</div>
		</form>
		<div class="row">
			<!--컨텐츠 영역-->
			<div class="col-lg-12">
				
				<table class="table">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>성별</th>
						<th>생년월일</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>E-mail</th>
						<th>회원등급</th>
						<th>비고</th>
					</tr>
					<c:choose>
						<c:when test="${empty user }">
							<c:forEach items="${users }" var="vo">
								<tr>
									<td>${vo.user_Id } <input type="hidden" name="user_id" value="${vo.user_Id }"></td>
									<td><input type="text" id="user_name" name="user_name" value="${vo.user_Name }"></td>
									<td>
										<c:if test="${vo.user_Gender eq 'M'}">남자</c:if>
										<c:if test="${vo.user_Gender eq 'W'}">여자</c:if>
									</td>
									<td>${vo.user_Birth }</td>
									<td>${vo.user_Phone }</td>
									<td width="20%">${vo.user_Addr }</td>
									<td>${vo.user_Email }</td>
									<td>${vo.user_Gubun }</td>
									<td><button class="btn" type="button" onclick="updateForm('${vo.user_Id}','${vo.user_Name }')">수정</button><br>
									<button class="btn" type="button" onclick="deleteForm(${vo.user_Id})">삭제</button></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								
								<td>${user.user_Id }</td>
								<td><input type="text" id="user_name" name="user_namename" value="${user.user_Name }"></td>
								
								<td>
									<c:if test="${user.user_Gender eq 'M'}">남자</c:if>
									<c:if test="${user.user_Gender eq 'W'}">여자</c:if>
								</td>
								<td>${user.user_Birth }</td>
								<td>${user.user_Phone }</td>
								<td width="20%">${user.user_Addr }</td>
								<td>${user.user_Email }</td>
								<td>${user.user_Gubun }</td>
								<td><button class="btn" type="submit">수정</button><br>
								<button class="btn" type="button" onclick="deleteForm(${user.user_Id})">삭제</button></td>
								</tr>
						</c:otherwise>
					</c:choose>
				</table>
				
				<c:if test="${!empty user }">
					<button type="submit" class="btn btn-primary text-white btn-search">
							<span class="icon-search icon mr-2"></span>전체리스트
					</button>
				</c:if>
			</div>
		</div>
	</div>
</section>