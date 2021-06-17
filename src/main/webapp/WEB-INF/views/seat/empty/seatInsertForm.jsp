<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>

<script>
	function insert(num, day, d) {
		var id = '${loginUserVO.user_Id}';
		frm.seat_Num.value = num;
		frm.user_Id.value = id;
		
		console.log(num);
		console.log(id);
		
		let inChk = confirm("입실하시겠습니까?");
		if (inChk) {
			frm.submit();
		}
	}
	
	function update(num) {
		end.seat_Num.value = num;
		
		console.log(num);
		let outChk = confirm("퇴실하시겠습니까?");
		if (outChk) {
			end.submit();
		}
	}

</script>

<form id="frm" action="seatOneInsert.do">
	<input type="hidden" name="seat_Num">
	<input type="hidden" name="user_Id">
</form>
<form id="end" action="seatEndUpdate.do">
	<input type="hidden" name="seat_Num">
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
							<td class="form-group"><button type="button" id="${vo.seat_Num }"
							onclick="update(${vo.seat_Num })">퇴실</button></td>
						</c:if>
						<c:if test="${vo.seat_Status eq 0 }">
							<td class="form-group"><button type="button" id="${vo.seat_Num }"
							onclick="insert(${vo.seat_Num })">입실</button></td>
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
