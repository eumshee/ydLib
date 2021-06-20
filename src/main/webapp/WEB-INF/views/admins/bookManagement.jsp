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
		function formSubmit(num,isbn) {
			frm.book_Num.value = num;
			frm.book_Isbn.value = isbn;
			frm.submit();
		}
		function bigoSubmit(num,isbn) {
			bigo.book_Bigo.value = $('#bookNum'+num+' option:selected').val();
			bigo.book_Num.value = num;
			bigo.book_Isbn.value = isbn;
			bigo.submit();
		}
</script>

<form id="frm" action="bookDetailManage.do" method="post">
	<input type="text" id="book_Num" name="book_Num" hidden="">
	<input type="text" id="book_Isbn" name="book_Isbn" hidden="">
</form>
<form id="bigo" action="bookManageBigoUpdate.do" method="post">
	<input type="text" id="book_Bigo" name="book_Bigo" hidden="">
	<input type="text" id="book_Num" name="book_Num" hidden="">
	<input type="text" id="book_Isbn" name="book_Isbn" hidden="">
</form>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">장서관리</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span>
					<a href="adminPage.do"><span
						class="text-white"><strong>관리자</strong></span></a>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 책리스트 -->
<section class="site-section block__18514" id="next-section">
	<div class="container-fluid" style="width:80%">
		<div class="row">
			<div class="col-lg-12">
				<div align="right">
					<button type="submit" class="btn btn-primary text-white btn-search"
						onclick="location.href='bookInputManage.do'">
						<span class="icon-plus mx-auto"></span>&nbsp;등록
					</button>
					<br> <br>
				</div>
				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable"
								style="width: 100%; cellspacing: 0">
								<thead>
									<tr>
										<th width="5%">번호</th>
										<th>구분</th>
										<th>책제목</th>
										<th width="15%">저자</th>
										<th width="15%">출판사</th>
										<th width="8%">출판일</th>
										<th width="8%">입고일</th>
										<th width="6%">위치</th>
										<th>비고</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>번호</th>
										<th>구분</th>
										<th>책제목</th>
										<th>저자</th>
										<th>출판사</th>
										<th>출판일</th>
										<th>입고일</th>
										<th>위치</th>
										<th>비고</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${bookMgList }" var="vo">
										<tr>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${vo.book_Num }</td>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${vo.book_Gubun }</td>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${vo.book_Title }</td>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${vo.book_Aut }</td>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${vo.book_Pub }</td>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${fn:substring(vo.book_Pubdate,0,10) }</td>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${fn:substring(vo.book_Indate,0,10) }</td>
											<td onclick="formSubmit(${vo.book_Num },'${vo.book_Isbn }')">${vo.book_Location }번서가</td>
											<td><select id="bookNum${vo.book_Num}">
													<option hidden=""
														<c:if test="${vo.book_Bigo eq ''}">selected</c:if>></option>
													<option value=""></option>
													<option value="분실"
														<c:if test="${vo.book_Bigo eq '분실'}">selected</c:if>>분실</option>
													<option value="훼손"
														<c:if test="${vo.book_Bigo eq '훼손'}">selected</c:if>>훼손</option>
													<option value="서가정리"
														<c:if test="${vo.book_Bigo eq '서가정리'}">selected</c:if>>서가정리</option>
											</select>
												<button type="button"
													onclick="bigoSubmit(${vo.book_Num},'${vo.book_Isbn }')">수정</button>
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
	</div>
</section>

