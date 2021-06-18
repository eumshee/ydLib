<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.bbtn{
	margin-top: 5px;
	border: 1px solid black;
	border-radius: 10px;
	padding: 0.375rem 0.75rem;
	text-align: center;
}
 .col-md-12 a {
 	font-size: 1em;
 	color: lightgray;
 	text-decoration: none;
 }
 .col-md-12 a:hover { color: white; }
</style>
<script>
	function nameUpdate(id) {
		frm.user_Name.value = $('#Name'+id).val();
		frm.user_Gubun.value = $('#Gubun'+id+' option:selected').val();
		console.log($('#Name'+id).val(),$('#Gubun'+id+' option:selected').val())
		frm.user_Id.value = id;
		frm.submit();
	}
</script>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">회원 관리</h1>
			</div>
			<div class="col-md-12" align="center">
				<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><a href="adminPage.do">관리자 홈</a></span>
			</div>
		</div>
	</div>
</section>
<!-- 상단배너 end -->

<section class="site-section block__18514" id="next-section">
	<div class="container">
	<div class="card shadow mb-4">
				<div class="card-body">
					<div class="table-responsive">
					<form id="frm" action="adminMemberUpdate.do" method="post">
						<input type="hidden" name="user_Name">
						<input type="hidden" name="user_Id">
						<input type="hidden" id="user_Gubun" name="user_Gubun">
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
										<tr>
											<td>${vo.user_Id }</td>
											<td><input type="text" id="Name${vo.user_Id }" value="${vo.user_Name }" size="3"></td>
											<td>
												<c:if test="${vo.user_Gender eq 'M'}">남자</c:if>
												<c:if test="${vo.user_Gender eq 'W'}">여자</c:if>
											</td>
											<td>${vo.user_Birth }</td>
											<td>${vo.user_Phone }</td>
											<td width="20%">${vo.user_Addr }</td>
											<td>${vo.user_Email }</td>
											<td><select id="Gubun${vo.user_Id }">
												<option value="준회원" <c:if test="${vo.user_Gubun eq '준회원'}"> selected</c:if>>준회원</option>
												<option value="정회원" <c:if test="${vo.user_Gubun eq '정회원'}"> selected</c:if>>정회원</option>
												<option value="삭제 회원" <c:if test="${vo.user_Gubun eq '삭제 회원'}"> selected</c:if>>삭제 회원</option>
												<option value="관리자" <c:if test="${vo.user_Gubun eq '관리자'}"> selected</c:if>>관리자</option>
											</select></td>
											<td><button class="bbtn" type="button" onclick="nameUpdate('${vo.user_Id }')">수정</button><br>
											</td>
										</tr>
								</c:forEach>
							</tbody>
						</table>
						</form>
					</div>
				</div>
			</div>
	</div>
</section>