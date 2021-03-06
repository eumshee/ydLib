<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>로그인페이지</title>
<head>

<style>
td {
  width: 150px;
}
input {
  width: 150px;
}
</style>


<script>
$(function() {
		$('#sendEmail').click(function() {

			if ($('#user_Email').val() == "") {
				alert('이메일을 입력하세요.');
				$('#user_Email').focus();
				return false;
			}
			//email 중복확인 ajax
			$.ajax({
				url : 'sameEmailCheck.do',
				data : {email : $('#user_Email').val() },
				type : 'post',
				success : function(data) {
					if (data > 0) {
						alert('등록된 이메일이 존재합니다. 새로운 이메일을 입력하세요');
						$('#user_Email').val('');
						$('#user_Email').focus();
					} else {
						alert('등록가능한 이메일입니다.');
						$('#sendEmail').val('checked');
						$('#emailCode').focus();
						//중복확인 통과후 인증코드 메일보내는 ajax
						$.ajax({
							url : 'sendEmail.do',
							data : {
								email : $('#user_Email').val()
							},
							type : 'post',
							success : function(code) {
								alert('메일이 전송되었습니다.');
								$('#checkEmail').click(function() { // 성공해서 이메일에서 값을 건네받은 경우에, 인증번호 버튼을 클릭 시 값을 검사
									if ($('#emailCode').val() == code) { // 사용자의 입력값과 sendSMS에서 받은 값이 일치하는 경우
										alert('인증되었습니다');
										frm.checkEmail.value = 'checked';
									} else {
										alert('인증번호가 틀립니다');
									}
								})
							},
							error : function(err) {
								alert('에러가 발생했습니다. 관리자에게 문의해주세요.');
							}
						});
					}
				},
				error : function(err) {
					console.log(err);
				}
			});
		});
		
		
		
	});
</script>

<script>
	//아이디 중복체크
	$(function() {
		$('#idCheck').click(function() {
			if($('#user_Id').val()=="") {
				alert('아이디를 입력하세요.');
				$('#user_Id').focus();
				return;
			}
			$.ajax({
				url:'userIdCheck.do',
				data: {id: $('#user_Id').val()},
				type: 'post',
				success: function(data){
					if(data>0) {
						alert('등록된 아이디가 존재합니다. 새로운 아이디를 입력하세요');
						$('#user_Id').val('');
						$('#user_Id').focus();
					} else{
						alert('사용가능한 아이디입니다.');
						$('#idCheck').val("checked");
						$('#user_Pw').focus();
					}
				},
				error: function(err){
					alert('에러가 발생했습니다. 관리자에게 문의해주세요.');
				}
			});
		});
	});
</script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"> //주소입력 스크립트
</script>

<script>
//주소입력
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('user_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("user_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("user_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>

<script>
	//휴대폰 번호입력 ajax
	$(function() {
		$('#sendSMS').click(function() { // 클릭하면 인증 번호 보내기
			var tel = $('#user_Phone').val(); // 인증번호를 보낼 사용자가 입력한 tel

			if (tel == "") {
				alert('휴대폰번호를 입력하세요.');
				$('#user_Phone').focus();
				return false;
			}
			
			//휴대폰번호 중복확인 ajax
			$.ajax({
				url : 'samePhoneCheck.do',
				data : {
					tel : tel
				},
				type : 'post',
				success : function(data) {
					if (data > 0) {
						alert('등록된 휴대폰번호가 존재합니다. 새로운 휴대폰번호를 입력하세요');
						$('#user_Phone').val('');
						$('#user_Phone').focus();
					} else {
						alert('등록가능한 휴대폰번호입니다.');
						$('#sendSMS').val('checked');
						$('#smsKey').focus();
						
						//사용가능한 휴대폰일때 인증번호 전송 ajax
						if (tel != "") {
							$.ajax({
								url : 'sendSMS.do',
								data : {
									tel : tel
								},
								type : 'post',
								success : function(code) {
									alert('인증번호가 전송되었습니다');
									$('#checkSMS').click(function() { // 성공해서 sendSMS에서 값을 건네받은 경우에, 인증번호 버튼을 클릭 시 값을 검사
										if ($('#smsKey').val() == code) { // 사용자의 입력값과 sendSMS에서 받은 값이 일치하는 경우
											alert('인증되었습니다');
											frm.checkSMS.value = 'checked';
										} else {
											alert('인증번호가 틀립니다');
										}
									});
								}
							});
						}
					}
				},
				error : function(err) {
					alert('에러가 발생했습니다. 관리자에게 문의해주세요.');
				}
			});
		});
	});
	function formCheck() {
		if (frm.user_Id.value == "") {
			alert("아이디를 입력하세요.");
			frm.user_Id.focus();
			return false;
		}
		if (frm.idCheck.value == 'UnChecked') {
			alert("ID 중복체크를 하세요.");
			return false;
		}
		if (frm.user_Pw.value == "") {
			alert("비밀번호를 입력하세요.");
			frm.user_Pw.focus();
			return false;
		}

		if (frm.user_Pw.value != frm.user_Pw2.value) {
			alert("비밀번호를 재확인하세요.");
			frm.user_Pw2.focus();
			return false;
		}
		if (frm.user_Name.value == "") {
			alert("이름을 입력하세요.");
			return false;
		}
		if (frm.user_Email.value == "") {
			alert("이메일을 입력하세요.");
			return false;
		}
		if (frm.user_Phone.value == "") {
			alert("휴대폰번호를 입력하세요.");
			return false;
		}
		if (frm.user_post.value == "") {
			alert("주소를 입력하세요");
			frm.smsKey.focus();
			return false;
		}
		if (frm.user_detailedAddr.value == "") {
			alert("상세주소를 입력하세요");
			frm.smsKey.focus();
			return false;
		}
		if (frm.checkEmail.value == "unChecked") {
			alert("이메일을 인증 하세요");
			frm.emailCode.focus();
			return false;
		}  
		if (frm.checkSMS.value == "unChecked") {
			alert("문자 인증을 하세요");
			frm.smsKey.focus();
			return false;
		}    
		frm.submit();
		alert("정상적으로 회원가입 되었습니다");
	}
</script>
<body>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');" id="home-section">
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
							<li ><a href="userLoginForm.do">로그인</a></li>
							<li class="sideactive"><a href="userJoinForm.do">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--회원가입 화면-->
			
			<div class="col-lg-7" align="center">
					<h2><b>회원가입</b></h2>
			<br>
			<form id="frm" action="userJoin.do" method="post">
			<table style="border:1; border-collapse:collapse;">
					<tr>
						<th width="150">아이디</th>
						<td width="300">
							<input class="form-control" type="text" id="user_Id" name="user_Id">
						</td>
						<td width="300">
							<button class="btn btn-light" type="button" id="idCheck" value="unChecked">중복체크</button>
						</td>
					</tr>
					<tr>
						<th width="150">비밀번호</th>
						<td width="300" colspan="2">
						<input class="form-control" type="password" id="user_Pw"
							name="user_Pw"></td>
					</tr>
					<tr>
						<th width="150">비밀번호 재확인</th>
						<td width="300" colspan="2">
						<input class="form-control" type="password" id="user_Pw2"
							name="user_Pw2"></td>
					</tr>
					<tr>
						<th width="150">이름</th>
						<td width="300" colspan="2">
						<input class="form-control" type="text" id="user_Name"
							name="user_Name"></td>
					</tr>

					<tr>
						<th width="150">성별</th>
						<td width="300" colspan="2">
						<select class="custom-select" id="user_Gender" name="user_Gender">
								<option selected>성별을 선택해주세요</option>
								<option value="M">남</option>
								<option value="W">여</option>
						</select>
						</td>
					</tr>
					
					<tr>
						<th width="150">생년월일</th>
							<td width="200">
							<select  class="custom-select"
								name="user_BirthYear" id="user_BirthYear" >
										<option selected>Year</option>
										<% for (int i=2021; i>1900; i--) { %>
											<option value= "<%=i%>"><%=i%></option>
											<% } %>
							</select></td>
							
							<td width="200">
						<select class="custom-select" name="user_BirthMonth" id= "user_BirthMonth">
								<option selected>Month</option>
										<% for (int i=1; i<=12; i++) { %>
											<option value= "<%=i%>"><%=i%></option>
											<% } %>
						</select>
						
						<td width="200">
						<select class="custom-select" name="user_BirthDay" id="user_BirthDay">
								<option selected>Day</option>
								<% for (int i=1; i<=31; i++) { %>
											<option value= "<%=i%>"><%=i%></option>
											<% } %>
						</select>
						</td>
					</tr>
					

					<tr>
						<th>이메일</th>
						<td width="350" colspan="2">
 						<input class="form-control" type="text" id="user_Email" name="user_Email" value="">
 						</td>
 						<td>
 						<button class="btn btn-light" type="button" id="sendEmail" value="unChecked">인증코드 전송</button>
 						</td>
 						</tr>
 						<tr>
 						<th></th>
 						<td width="350" colspan="2">
 						<input class="form-control" type="text" placeholder="이메일 인증코드" id="emailCode" value="">
 						</td>
 						<td>
 						<button class="btn btn-light" type="button" id="checkEmail" value="unChecked">인증코드 확인</button>
						</td>
					</tr>
					
					<tr><td colspan="2">&nbsp;</td></tr>
					
					<tr>
						<th width="150">전화번호</th>
						<td width="350" colspan="2"><input class="form-control" type="text" id="user_Phone"
							name="user_Phone" placeholder ="'-'없이 숫자만 입력" >
						</td>
						<td>
							<button class="btn btn-light" type="button" id="sendSMS" value="unChecked">인증번호 전송</button>
						</td>
					</tr>
					<tr>
						<th></th>
						<td width="350" colspan="2">
 						<input class="form-control" type="text" placeholder="문자 인증번호" id="smsKey" value="">
 						</td>
 						<td>
 						<button class="btn btn-light" type="button" id="checkSMS" value="unChecked">인증번호 확인</button>
						</td>
					</tr>
					<tr><td colspan="2">&nbsp;</td></tr>
					<tr>
						<th width="150">주소
						</th>
						<td width="300">
						<input class="form-control" id="user_post" type="text" name="userAddressZip" placeholder="Zip Code" readonly onclick="findAddr()">
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
  						<input class="form-control" id="user_addr" type="text" name="userAddress" placeholder="Address" readonly>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
 						<input class="form-control" id="user_detailedAddr" type="text" placeholder="Detailed Address" name="userAddressDetail">
						</td>
					</tr>
			</table>
			</form>
			<br>
				<button class="btn btn-light" type="button"
					onclick="formCheck()" style="width: 110px; height: 45px; background: #89ba10; color: white;">회원가입</button>
			</div>
			
			</div>
		</div>
</section>
</body>