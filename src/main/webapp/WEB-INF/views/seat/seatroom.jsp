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
function seatUpdate(num, status, id) {
    if(status == 1){//좌석이 사용중일떄
       if($('#sessionId').val()==id){ //세션정보, 사용중인 좌석이 같은 유저일때(퇴실 적용)
          console.log('같음');
          if(confirm("퇴실하시겠습니까?")){
              location.href="seatEndUpdate.do?seat_Num="+num;
           }else{
              alert('퇴실이 취소되었습니다.')
              return;
           }
       }else{ //세션정보, 사용중인 좌석이 다른 유저일때()
          alert('사용중인 좌석입니다. 다른좌석을 선택해 주세요.')
          return;
       }
    }else{ //좌석이 비었을때
       if(confirm(num + "번 좌석을 사용 하시겠습니까?")){
          location.href="seatOneInsert.do?seat_Num="+num+"&user_Id="+$('#sessionId').val();
       }else{
          alert('좌석 선택이 취소되었습니다.')
          return;
       }
    }
 }
	
</script>
<input type="hidden" id="sessionId" value="${loginUserId }">
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
		<div>
			<h1>좌석예약 정보</h1>
			좌석번호: ${user.seat_Num }, ${user.seat_start_Time }, ${user.seat_end_Time }
		</div>
		
		<h1>열람실 좌석배치도</h1>

		<table border="1">
			<tr>
				<c:forEach items="${seatList }" begin="0" end="10" var="vo">
					<c:if test="${vo.seat_Num le 10}">
						<td onclick="seatUpdate(${vo.seat_Num },${vo.seat_Status },'${vo.user_Id }')"
						<c:if test="${vo.seat_Status == 1}">class="bg"</c:if>>${vo.seat_Num }</td>
					</c:if>
				</c:forEach>
			</tr>
			
			<tr>
				<c:forEach items="${seatList }" begin="10" end="20" var="vo">
					<c:if test="${ vo.seat_Num le 20}">
						<td onclick="seatUpdate(${vo.seat_Num },${vo.seat_Status },'${vo.user_Id }')"
						<c:if test="${vo.seat_Status == 1}">class="bg"</c:if>>${vo.seat_Num }</td>
					</c:if>
				</c:forEach>
			</tr>
			
			<tr>
				<c:forEach items="${seatList }" begin="20" end="30" var="vo">
					<c:if test="${vo.seat_Num le 30 }">
						<td onclick="seatUpdate(${vo.seat_Num },${vo.seat_Status },'${vo.user_Id }')"
						<c:if test="${vo.seat_Status == 1}">class="bg"</c:if>>${vo.seat_Num }</td>
					</c:if>
				</c:forEach>
			</tr>
		</table>
		<br> <br>
	</div>
</div>