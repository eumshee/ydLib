<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>	
</script>
 	<div class="container-fluid" style="width:80%;">
				<form id="frm" class="p-4 p-md-5 border rounded"
					action="bookOneInsert.do" method="post">
					<h3 class="text-black mb-5 border-bottom pb-2">열람실 예약</h3>
					<table style="width: 100%;">
						<tr>
							<th class="form-group"><label for="user_Id">아이디</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" class="form-control" id="user_Id"
								placeholder="아이디" name="user_Id"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="seat_Num">좌석번호</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" placeholder="좌석번호" class="form-control"
								id="seat_Num" name="seat_Num"></td>
						</tr>
						<tr>
							<th class="form-group"><label for="seat_start_Time">예약시간</label>&nbsp;<span
								class="icon-asterisk mx-auto" style="color: red;"></span></th>
							<td><input type="text" placeholder="예약시간" class="form-control"
								id="seat_start_Time" name="seat_start_Time"></td>
						</tr>
					</table>
				</form>
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
