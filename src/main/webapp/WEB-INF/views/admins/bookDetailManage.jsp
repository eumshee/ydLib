<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/hero_1.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">도서관리</h1>
				<div class="custom-breadcrumbs">
					<a href="adminPage.do">Admin</a> <span class="mx-2 slash">/</span>
					<span class="text-white"><strong>BookManagement</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 도서입력폼 -->
<section class="site-section">
	<div class="container">
		<div align="right">
			<div class="col-lg-3">
				<div class="col-4">
					<a href="#" class="btn btn-block btn-primary btn-md">수정</a>
				</div>
			</div>
		</div>
		<div class="row mb-5">
			<div class="col-lg-12">
				<form class="p-4 p-md-5 border rounded" method="post">
					<h3 class="text-black mb-5 border-bottom pb-2">Book Details</h3>

					<div class="form-group">
						<label for="company-website-tw d-block">Upload Featured
							Image</label> <br> <label class="btn btn-primary btn-md btn-file">
							Browse File<input type="file" hidden>
						</label>
					</div>
					<!--
	private int book_Num;
	private String book_Gubun;
	private String book_Title;
	private String book_Aut;
	private String book_Location;
	private String book_Byn;
	private String book_Pub;
	private String book_Pubdate;
	private String book_Indate;
	private String book_Img;
	private String book_Desc;
	private String book_Subject;  -->
					<div class="form-group">
						<label for="book_Num">번호</label>
						<input type="text" class="form-control" id="book_Num" name="book_Num">
					</div>
					<div class="form-group">
						<label for="book_Gubun">분류</label>
						<input type="text" class="form-control" id="book_Gubun" name="book_Gubun">
					</div>
					<div class="form-group">
						<label for="book_Title">제목</label>
						<input type="text" class="form-control" id="book_Title" name="book_Title">
					</div>
					<div class="form-group">
						<label for="book_Aut">저자</label>
						<input type="text" class="form-control" id="book_Aut" name="book_Aut">
					</div>
					<div class="form-group">
						<label for="book_Location">위치</label>
						<input type="text" class="form-control" id="book_Location" name="book_Location">
					</div>
					<div class="form-group">
						<label for="book_Byn">반납여부</label>
						<input type="text" class="form-control" id="book_Byn" name="book_Byn">
					</div>
					<div class="form-group">
						<label for="book_Pub">책번호</label>
						<input type="text" class="form-control" id="book_Pub" name="book_Pub">
					</div>
					<div class="form-group">
						<label for="book_Pubdate">책번호</label>
						<input type="text" class="form-control" id="book_Pubdate" name="book_Pubdate">
					</div>
					<div class="form-group">
						<label for="book_Indate">책번호</label>
						<input type="text" class="form-control" id="book_Indate" name="book_Indate">
					</div>
					<div class="form-group">
						<label for="book_Img">책번호</label>
						<input type="text" class="form-control" id="book_Img" name="book_Img">
					</div>
					<div class="form-group">
						<label for="book_Desc">책번호</label>
						<input type="text" class="form-control" id="book_Desc" name="book_Desc">
					</div>
					<div class="form-group">
						<label for="book_Subject">책번호</label>
						<input type="text" class="form-control" id="book_Subject" name="book_Subject">
					</div>
					<div class="form-group">
						<label for="book_Isbn">책번호</label>
						<input type="text" class="form-control" id="book_Isbn" name="book_Isbn">
					</div>
					<div class="form-group">
						<label for="book_Bigo">책번호</label>
						<input type="text" class="form-control" id="book_Bigo" name="book_Bigo">
					</div>

					<div class="form-group">
						<label for="job-region">Job Region</label> <select
							class="selectpicker border rounded" id="job-region"
							data-style="btn-black" data-width="100%" data-live-search="true"
							title="Select Region">
							<option>Anywhere</option>
							<option>San Francisco</option>
							<option>Palo Alto</option>
							<option>New York</option>
							<option>Manhattan</option>
							<option>Ontario</option>
							<option>Toronto</option>
							<option>Kansas</option>
							<option>Mountain View</option>
						</select>
					</div>

					<div class="form-group">
						<label for="job-type">Job Type</label> <select
							class="selectpicker border rounded" id="job-type"
							data-style="btn-black" data-width="100%" data-live-search="true"
							title="Select Job Type">
							<option>Part Time</option>
							<option>Full Time</option>
						</select>
					</div>


					<div class="form-group">
						<label for="job-description">Job Description</label>
						<div class="editor" id="editor-1">
							<p>Write Job Description!</p>
						</div>
					</div>


					<h3 class="text-black my-5 border-bottom pb-2">Company Details</h3>
					<div class="form-group">
						<label for="company-name">Company Name</label> <input type="text"
							class="form-control" id="company-name"
							placeholder="e.g. New York">
					</div>

					<div class="form-group">
						<label for="company-tagline">Tagline (Optional)</label> <input
							type="text" class="form-control" id="company-tagline"
							placeholder="e.g. New York">
					</div>

					<div class="form-group">
						<label for="job-description">Company Description
							(Optional)</label>
						<div class="editor" id="editor-2">
							<p>Description</p>
						</div>
					</div>

					<div class="form-group">
						<label for="company-website">Website (Optional)</label> <input
							type="text" class="form-control" id="company-website"
							placeholder="https://">
					</div>

					<div class="form-group">
						<label for="company-website-fb">Facebook Username
							(Optional)</label> <input type="text" class="form-control"
							id="company-website-fb" placeholder="companyname">
					</div>

					<div class="form-group">
						<label for="company-website-tw">Twitter Username
							(Optional)</label> <input type="text" class="form-control"
							id="company-website-tw" placeholder="@companyname">
					</div>
					<div class="form-group">
						<label for="company-website-tw">Linkedin Username
							(Optional)</label> <input type="text" class="form-control"
							id="company-website-tw" placeholder="companyname">
					</div>

					<div class="form-group">
						<label for="company-website-tw d-block">Upload Logo</label> <br>
						<label class="btn btn-primary btn-md btn-file"> Browse
							File<input type="file" hidden>
						</label>
					</div>

				</form>
			</div>


		</div>
		<div class="row align-items-center mb-5">

			<div class="col-lg-4 ml-auto">
				<div class="row">
					<div class="col-6">
						<a href="#" class="btn btn-block btn-light btn-md"><span
							class="icon-open_in_new mr-2"></span>Preview</a>
					</div>
					<div class="col-6">
						<a href="#" class="btn btn-block btn-primary btn-md">Save Job</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>