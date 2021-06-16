<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.site-footer .scroll-top {
	position: absolute;
	z-index: 5;
	top: 0;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	background: #fff;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-box-shadow: 0 0px 10px 0px rgba(0, 0, 0, 0.1);
	box-shadow: 0 0px 10px 0px rgba(0, 0, 0, 0.1);
}

.main1 .search-box {width:650px;margin-top:38px;}
.main1 .search-box fieldset{position:relative;overflow:hidden;}
.main1 .search-box legend {background:#89BA16;color:#fff;}
.main1 .search-box input {border:0;background:#fff;width:100%;padding-left:18px;font-size:17px;color:#000;}
.main1 .search-box input:focus{outline:none}
.main1 .search-box input,
.main1 .search-box button{height:52px;line-height:51px;border-right:7px solid #89BA16 !important; border: none;}
.main1 .search-box button{position:absolute;right:0;width:60px;text-align:center;background:#fff;font-size:30px;color:#757575;}

.main1 .search-box .main-box {width:100%;border:7px solid #89BA16;overflow:hidden;}
.main1 .search-box .main-box .title-box {position:absolute;left:0;background:#89BA16;color:#fff;font-size:18px;padding:13px 0;width:150px;text-align:center;}
.main1 .search-box .box1{float:left;width:100%;margin-left:140px;}
.main1 .search-box .box2{margin-right:80px}

</style>
<!-- HOME -->
<section class="home-section section-hero overlay bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">

	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-md-12">
				<div class="mb-5 text-center">
					<p>
						<img
							src="https://library.daegu.go.kr/resources/homepage/donggu/img/main_txt_sm.png">
					</p>
					<h1 class="text-white font-weight-bold">예담작은도서관</h1>
				</div>
					<div class="mb-5">
						<div class="main1" align="center">
							<div class="section">
								<div class="search-box">
									<form id="mainSearchForm" action="">
										<input type="hidden" name="menu_idx" value="13"> <input
											type="hidden" name="booktype" value="BOOKANDNONBOOK">
											<fieldset>
										<div class="main-box">
											<div class="title-box">통합자료검색</div>
											<div class="box1">
												<div class="box2">
													<input name="title" id="search_text_1" type="text"
														class="text" placeholder="책 제목을 입력하세요"
														style="ime-mode: active;" />
												</div>
											</div>
											<button>
												<span class="icon-search icon mr-2"></span>
											</button>
										</div>
										</fieldset>
									</form>
								</div>
							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-md-12 popular-keywords">
							<h3>Trending Keywords:</h3>
							<ul class="keywords list-unstyled m-0 p-0">
								<li><a href="#" class="">UI Designer</a></li>
								<li><a href="#" class="">Python</a></li>
								<li><a href="#" class="">Developer</a></li>
							</ul>
						</div>
					</div>
			</div>
		</div>
	</div>

	<a href="#next" class="scroll-button smoothscroll"> <span
		class=" icon-keyboard_arrow_down"></span>
	</a>

</section>

<section class="py-5 bg-image overlay-primary fixed overlay" id="next"
	style="background-image: url('resources/images/main.jpg');">
	<div class="container">
		<div class="row mb-5 justify-content-center">
			<div class="col-md-7 text-center">
				<h2 class="section-title mb-2 text-white">DAEGU YEDAM SMALL
					LIBRARY</h2>
				<p class="lead text-white">537, Gukchaebosang-ro, Jung-gu,
					Daegu, Republic of Korea</p>
			</div>
		</div>
		<div class="row pb-0 block__19738 section-counter">

			<div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
				<div class="d-flex align-items-center justify-content-center mb-2">
					<strong class="number" data-number="1930">0</strong>
				</div>
				<span class="caption">Candidates</span>
			</div>

			<div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
				<div class="d-flex align-items-center justify-content-center mb-2">
					<strong class="number" data-number="54">0</strong>
				</div>
				<span class="caption">Jobs Posted</span>
			</div>

			<div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
				<div class="d-flex align-items-center justify-content-center mb-2">
					<strong class="number" data-number="120">0</strong>
				</div>
				<span class="caption">Jobs Filled</span>
			</div>



		</div>
	</div>
</section>