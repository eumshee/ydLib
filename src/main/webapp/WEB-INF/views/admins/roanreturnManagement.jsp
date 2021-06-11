<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.member{
float: left;
width: 40%;
margin-left: 5%;
margin-right: 5%;
}
.returnbook{
	width: 45%;
}
.prosessbox{
	margin: 30px auto;
	width: 80%;
}
h2{
	text-align: center;
}
</style>


<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('images/hero_1.jpg');" id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">대출 반납 관리</h1>
				<div class="custom-breadcrumbs">
					<a href="adminPage.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>대출/반납</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 상단배너 end -->

<section class="site-section block__18514" id="next-section">
			<!-- 검색창 -->
				<div align="center" style="">
					<form action ="adminMemberSearch2.do" method="post" style="display: inline;">
						<input type="text" id="usersearch" name="usersearch" placeholder="아이디을 입력하세요" size="30">
						<button type="submit" class="btn btn-primary text-white btn-search">
							<span class="icon-search icon mr-2"></span>검색
						</button>
					</form>
					<form action ="adminBooksearch.do" method="post" style="display: inline;">
						<input type="text" id="booksearch" name="booksearch" placeholder="책번호를 입력하세요" size="30">
						<button type="submit" class="btn btn-primary text-white btn-search">
							<span class="icon-search icon mr-2"></span>대출
					</button>
					</form>
				</div>
			<!--컨텐츠 영역-->
		<div class="row">
			<div class="member">
				<h2>회원 정보</h2>
				<table class="table">
					<tr>
						<td>id</td><td><b>dkdlel</b></td><td>이름</td><td><b>세글자</b></td>
					</tr>
					<tr>
						<td>회원등급</td><td><b>정회원</b></td><td>성별</td><td><b>남자</b></td>
					</tr>
					<tr>
						<td>생년월일</td><td><b>2010-10-10</b></td><td>전화번호</td><td><b>010-1111-1111</b></td>
					</tr>
					<tr>
						<td colspan="2"> 이메일 </td><td colspan="2"><b>testemil@naver.com</b></td>
					</tr>
				</table>
			</div>
			<div class="returnbook">
				<h2>대출 목록</h2>
				<table class="table">
					<tr>
						<th>대출번호</th><th>책번호</th><th>대출일자</th><th>반납예정일</th><th>연체일</th><th>대출상태</th><th>처리된 업무</th>
					</tr>
					<tr>
						<td>1</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td>0</td><td>대출</td><td><input type="button" value="반납"></td>
					</tr>
					<tr>
						<td>2</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td>0</td><td>대출</td><td><input type="button" value="반납"></td>
					</tr>
					<tr>
						<td>3</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td>0</td><td>대출</td><td><input type="button" value="반납"></td>
					</tr>
					<tr>
						<td>4</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td>0</td><td>대출</td><td><input type="button"value="반납"></td>
					</tr>
					<tr>
						<td>5</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td>0</td><td>대출</td><td><input type="button" value="반납"></td>
					</tr>
				</table>
			</div>
			<div class="prosessbox">
				<h2>처리된 내용</h2>
				<table class="table">
					<tr>
						<th>대출번호</th><th>사용자</th><th>책번호</th><th>대출일자</th><th>반납예정일</th><th>반납일</th><th>연체일</th><th>대출상태</th><th>반납</th>
					</tr>
					<tr>
						<td>1</td><td>user1</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td> </td><td>0</td><td>대출</td><td>반납</td>
					</tr>
					<tr>
						<td>2</td><td>user1</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td> </td><td>0</td><td>대출</td><td>반납</td>
					</tr>
					<tr>
						<td>3</td><td>user1</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td>2021/06/12</td><td>0</td><td>대출</td><td>반납</td>
					</tr>
					<tr>
						<td>4</td><td>user1</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td> </td><td>0</td><td>대출</td><td>대출</td>
					</tr>
					<tr>
						<td>5</td><td>user1</td><td>465789</td><td>2021/06/11</td><td>2021/06/24</td><td> </td><td>0</td><td>대출</td><td>반납</td>
					</tr>
				</table>				
			</div>
		</div>
</section>