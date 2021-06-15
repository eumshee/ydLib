<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>로그인페이지</title>
<head>

<script>
	function loginCheck() {
		if (frm.user_Id.value == "") {
			alert("아이디를 입력하세요.");
			frm.user_Id.focus();
			return false;
		}
		if (frm.user_Pw.value == "") {
			alert("비밀번호를 입력하세요.");
			frm.user_Pw.focus();
			return false;
		}
	
		$.ajax({
			url : 'userLoginIdCheck.do',
			data : $('#frm').serialize(),
			type : 'post',
			success : function(user) {
				if(user_Id != null) {
					alert( user + "님이 정상적으로 로그인 되었습니다.");
					window.location="home.do";
				} 
			},
			error : function(err) {
				alert("해당하는 회원정보가 없습니다. 다시 시도해주세요.");
			}
		});
		
	}
</script>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('images/hero_1.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">회원정보</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>회원가입</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 mr-3">
				<div class="rounded">
					<div class="sidenav">
						<ul class="list-unstyled">
							<li class="sideactive"><a href="userLoginForm.do">로그인</a></li>
							<li><a href="userJoinForm.do">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--로그인 화면-->
				<div align="center">
					<h3>로그인</h3>
					<form id="frm" action="userLogin.do" method="post">
						<div>
							<table style="border: '1'; border-collapse: collapse;">
								<tr>
									<th>아이디:</th>
									<td>
									<input type="text" class="form-control" id="user_Id" name="user_Id" >
									</td>
								</tr>
								<tr >
									<th>패스워드:</th>
									<td>
									 <input type="password" class="form-control" id="user_Pw" name="user_Pw">
									</td>
								</tr>
							</table>
						</div>
						<br>
						
						
					</form>
					
					<div align="center">
					<button class="btn btn-light" type="button" onclick="loginCheck()">로그인</button>
					<button class="btn btn-light" type="button" onclick="location.href='userJoinForm.do'">회원가입</button>
				</div>
				</div>
				
				
			</div>
		</div>
</section>
