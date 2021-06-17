<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
function endSeat(id){
	let seatNum = $('#seat_Num'+id).val();
	$.ajax({
		url:'endSeatUpdate.do',
		type: 'post',
		data: {seat_Num: seatNum},
		success: function(result){
			alert('퇴실이 완료되었습니다.');
		},
		error: function(err){
			console.error(err);
		}
	
	})
}
</script>
 	<div class="container-fluid" style="width:80%;">
					<h3 class="text-black mb-5 border-bottom pb-2">열람실 예약</h3>
					<table style="width: 100%;" border="1">
						<tr>
							<th class="form-group">좌석번호</th>
							<th class="form-group">퇴실예정시간</th>
							<th class="form-group">좌석상태</th>
							<th class="form-group">비고</th>
						</tr>
					<c:forEach items="${list }" var="vo">
						<input type="hidden" id="seat_Num${vo.seat_Num }" value="${vo.seat_Num }">
						<input type="hidden" id="user_Id${vo.seat_Num }" value="${vo.user_Id }">
						<tr>
							<td class="form-group">${vo.seat_Num } </td>
							<td class="form-group">${vo.seat_end_Time }</td>
						<c:if test="${vo.seat_Status eq 1 }">
							<td class="form-group">사용불가</td>
						</c:if>
						<c:if test="${vo.seat_Status eq 0 }">
							<td class="form-group">사용가능</td>
						</c:if>
						
						<c:if test="${vo.seat_Status eq 1 }">
							<td class="form-group"><button type="button" onclick="endSeat(${vo.seat_Num })">퇴실</button></td>
						</c:if>
						<c:if test="${vo.seat_Status eq 0 }">
							<td class="form-group"><button type="button">입실</button></td>
						</c:if>
						</tr>
					</c:forEach>
					</table>
			</div>
	<div align="center">
		<div class="col-lg-3">
			<div class="col-5">
				<button type="button" class="btn btn-primary text-white btn-search"
					onclick="location.href='bookManagement.do'">
					<span class="icon-reply-all mx-auto"></span>&nbsp;목록보기
				</button>
			</div>
		</div>
	</div>
