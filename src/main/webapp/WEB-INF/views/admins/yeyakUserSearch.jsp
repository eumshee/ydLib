<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">회원목록</h1>
			</div>
		</div>
	</div>
</section>
<!-- 도서입력폼 -->
<section class="site-section">
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable"
					style="width: 100%; cellspacing: 0">
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>회원</th>
						</tr>
					</thead>
					<tfoot>
					</tfoot>
					<tbody>
						<c:forEach items="${userList }" var="vo">
							<tr>
								<td>${vo.user_Id }</td>
								<td>${vo.user_Name }</td>
								<td>${vo.user_Gubun }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>