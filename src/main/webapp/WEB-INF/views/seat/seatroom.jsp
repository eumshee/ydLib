<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
    	if($('#sessionId').val()!='') { //회원이면
    		if($('#endEarly').val()=='') { //사용중이면
		          alert('한 자리만 예약할 수 있습니다!')
		          return;
    		} else {
		       if(confirm(num + "번 좌석을 사용 하시겠습니까?")){
		          location.href="seatOneInsert.do?seat_Num="+num+"&user_Id="+$('#sessionId').val();
		       } else{
		          alert('좌석 선택이 취소되었습니다.')
		          return;
		       }    			
    		}
    	} else { //비회원이면
	          alert('로그인 후 예약가능합니다.')
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
		<div class="row" >
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

<section class="site-section block__18514" id="next-section">
<div class="container-fluid" style="width:80%">
	<div class="row">
		<!-- 왼쪽네비 -->
		<c:choose>
			<c:when test="${!empty loginUserId }">
			<input type="hidden" id="endEarly" value="${user.seat_end_Early}">
				 <div class="col-lg-2.5" align="center" style="width: 25%; margin: 1em;">
		            <div class="bg-light p-3 border rounded mb-4">
						<div class="rounded">
							<div class="sidenav">
									<p><b>${loginUserVO.user_Name } 님 좌석예약정보입니다.</b></p>
									<c:choose>
										<c:when test="${user.seat_Status==1}">
											<span><b>좌석번호: ${user.seat_Num }</b></span>
											<br>
											<span><b>입실시간: ${fn:substring(user.seat_start_Time,2,16) }</b></span>
											<br>
											<span style="color:red;"><b>퇴실시간: ${fn:substring(user.seat_end_Time,2,16) }</b></span>
										</c:when>
										<c:otherwise>
											<span><b>현재 예약좌석이 없습니다.</b></span>
										</c:otherwise>
									</c:choose>
							</div>
						</div>
		              
		            </div>
				</div>
			</c:when>
			<c:otherwise></c:otherwise>
		</c:choose>
		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<div align="center" <c:if test="${empty loginUserId }"> style="width:100%;"</c:if>>
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
				<tr style="border-left: 0; border-right: 0"><td colspan="10"></td></tr>
				<tr>
					<c:forEach items="${seatList }" begin="10" end="20" var="vo">
						<c:if test="${ vo.seat_Num le 20}">
							<td onclick="seatUpdate(${vo.seat_Num },${vo.seat_Status },'${vo.user_Id }')"
							<c:if test="${vo.seat_Status == 1}">class="bg"</c:if>>${vo.seat_Num }</td>
						</c:if>
					</c:forEach>
				</tr>
				<tr style="border-left: 0; border-right: 0"><td colspan="10"></td></tr>
				
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
</div>
</section>