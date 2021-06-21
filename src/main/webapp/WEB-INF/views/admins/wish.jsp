<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
	th, td {
		vertical-align: middle !important;
	}
</style>
<script>
		function bigoSubmit(userId,wishId) {
			Process.wish_Processing.value = $('#WishId'+wishId+' option:selected').val();
			Process.user_Id.value = userId;
			Process.wish_Id.value = wishId;
			Process.submit();
		}
		function wishCmtSubmit(wishId) {
			cmt.wish_Coment.value = $('#wishCmt' + wishId).val();
			console.log(cmt.wish_Coment.value);
			cmt.wish_Id.value = wishId;
			cmt.submit();
		}
		
		$(document).ready(function() {
			var table = $('#dataTable1').DataTable({
			   order: [ [ 0, "desc" ] ],
			   ordering: true,
			   serverSide: false
			   });
			});
</script>
<form id="Process" action="wishProcessUpdate.do" method="post">
	<input type="text" id="wish_Processing" name="wish_Processing" hidden="">
	<input type="text" id="user_Id" name="user_Id" hidden="">
	<input type="text" id="wish_Id" name="wish_Id" hidden="">
</form>
<form id="cmt" action="wishComentUpdate.do" method="post">
	<input type="hidden" name="wish_Coment">
	<input type="hidden" name="wish_Id">
</form>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">희망도서관리</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span>
					<a href="adminPage.do"><span
						class="text-white"><strong>관리자</strong></span></a>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 내용 -->
<section class="site-section" id="next-section">
	<div class="container-fluid" style="width: 80%">

		<div class="row">
			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-body">
					<div class="table-responsive">
						<b>&ldquo;중복신청 된 경우 먼저 신청한 이용자 선정, 이후 신청자는
							순서대로 예약 처리&rdquo;</b><hr><br>
						<table class="table table-bordered" id="dataTable1"
							style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th width="5%">번호</th>
									<th>신청자</th>
									<th>책제목</th>
									<th>저자</th>
									<th>출판사</th>
									<th>신청사유</th>
									<th>신청일</th>
									<th>처리과정</th>
									<th width="15%">처리결과</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>번호</th>
									<th>신청자</th>
									<th>책제목</th>
									<th>저자</th>
									<th>출판사</th>
									<th>신청사유</th>
									<th>신청일</th>
									<th>처리과정</th>
									<th>처리결과</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${wishMgList }" var="vo">
									<tr>
										<td>${vo.wish_Id }</td>
										<td>${vo.user_Id }</td>
										<td>${vo.wish_Title }</td>
										<td>${vo.wish_Aut }</td>
										<td>${vo.wish_Pub }</td>
										<td>${vo.wish_Bigo }</td>
										<td>${fn:substring(vo.wish_Date,0,10) }</td>
										<td><select id="WishId${vo.wish_Id}">
												<option value="신청중"
													<c:if test="${vo.wish_Processing eq '신청중'}">selected</c:if>>신청중</option>
												<option value="처리중"
													<c:if test="${vo.wish_Processing eq '처리중'}">selected</c:if>>처리중</option>
												<option value="소장중"
													<c:if test="${vo.wish_Processing eq '소장중'}">selected</c:if>>소장중</option>
												<option value="취소됨"
													<c:if test="${vo.wish_Processing eq '취소됨'}">selected</c:if>>취소됨</option>
										</select>
											<button type="button"
												onclick="bigoSubmit('${vo.user_Id}',${vo.wish_Id})">수정</button>
										</td>
										<td>
											<textarea id="wishCmt${vo.wish_Id}" rows="1" cols="25">${vo.wish_Coment }</textarea>
											<button type="button"
												onclick="wishCmtSubmit(${vo.wish_Id})">수정</button>											
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>