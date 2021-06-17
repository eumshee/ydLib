<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<jsp:useBean id="toDay" class="java.util.Date" />
<fmt:formatDate value='${toDay}' pattern="yyyy/MM/dd HH:mm:dd" var="today" />
<script>
	function insert(num, day) {
		var id = '${loginUserVO.user_Id}';
		frm.seat_Num.value = num;
		frm.user_Id.value = id;
		
		console.log(num);
		console.log(id);
		console.log(day);
		console.log(frm.today.value);
		
	}

</script>

<form id="frm" action="seatOneInsert.do">
	<input type="hidden" name="today" value="<c:out value="${today}"/>">
	<input type="hidden" name="seat_Num">
	<input type="hidden" name="user_Id">
</form>

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
							<td class="form-group"><button type="button" id="${vo.seat_Num }">퇴실</button></td>
						</c:if>
						<c:if test="${vo.seat_Status eq 0 }">
							<td class="form-group"><button type="button" id="${vo.seat_Num }"
							onclick="insert(${vo.seat_Num },'<c:out value="${today}"/>')">입실</button></td>
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
