<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
td {
	text-align: center;
	width: 50px;
	padding: 30px;
}

.none {
	border-bottom: 0;
	border-top: 0;
}

.bg {
	background: pink;
}

</style>
<script>
	function seatUpdate(num, status) {
		console.log(num, status);
		console.log(${uid});
		if(status == 1) {
			if(${loginUserVO.user_Id}) {
				alert('얍..');
			} else {
				alert('지정된 좌석입니다.');
				return;
			}
		} else {
			if(${empty loginUserVO.user_Id}) {
				alert('로그인 후 예약가능합니다.');
				return;				
			} else {
				let stChk = confirm("예약하시겠습니까?");
				if (stChk) {
					//location.href = "seatUpdate.do?seat_Status="+status+"&seat_Num="+num;	
						// 예약창 팝업
						var url= "seatInsertForm.do";  
						var winWidth = 700;
					    var winHeight = 600;
					    var popupOption= "width="+winWidth+", height="+winHeight;
						window.open(url,"",popupOption);
				}
			}
		}
		
	}
	
	
</script>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">좌석배치도</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>좌석배치도</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<div class="container-fluid">
	<div align="center">
		<h1>열람실 좌석배치도</h1>
		<table border="1">
			<tr>
				<c:forEach items="${seatList }" begin="0" end="10" var="vo">
					<c:if test="${vo.seat_Num le 10}">
						<td onclick="seatUpdate(${vo.seat_Num },${vo.seat_Status })"
						<c:if test="${vo.seat_Status == 1}">class="bg"</c:if>>${vo.seat_Num }</td>
					</c:if>
				</c:forEach>
			</tr>
			
			<tr>
				<c:forEach items="${seatList }" begin="10" end="20" var="vo">
					<c:if test="${ vo.seat_Num le 20}">
						<td onclick="seatUpdate(${vo.seat_Num },${vo.seat_Status })"
						<c:if test="${vo.seat_Status == 1}">class="bg"</c:if>>${vo.seat_Num }</td>
					</c:if>
				</c:forEach>
			</tr>
			
			<tr>
				<c:forEach items="${seatList }" begin="20" end="30" var="vo">
					<c:if test="${vo.seat_Num le 30 }">
						<td onclick="seatUpdate(${vo.seat_Num },${vo.seat_Status })"
						<c:if test="${vo.seat_Status == 1}">class="bg"</c:if>>${vo.seat_Num }</td>
					</c:if>
				</c:forEach>
			</tr>
		</table>
		<br> <br>
	</div>
</div>