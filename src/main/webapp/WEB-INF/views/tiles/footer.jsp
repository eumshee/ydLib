<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<Style>

.site-footer {
    padding: 3rem 0;
    position: relative;
    background: #555;
}

/*공통 푸터*/
#footer {
	z-index: 3;
	border-top: 1px solid #e4e4e4;
}

#footer .top {
	position: relative;
	height: 50px;
	border-top: 1px solid #e4e4e4;
	border-bottom: 1px solid #e4e4e4
}

#footer .bottom {
	padding: 23px 0 0 0
}

#footer .bottom .section {
	
}

#footer .bottom .section .site_link {
	position: absolute;
	right: 0;
	top: 0;
}

#footer .bottom .section .site_link div>div {
	width: 200px
}

#footer .bottom .section .site_link div>div, #footer .bottom .section .site_link a.btn
	{
	margin-bottom: 5px
}

#footer .bottom .section .site_link a.btn {
	padding: 8px 10px;
	border-radius: 0;
	background: #7b8294;
	border: 0;
	color: #fff
}

#footer .bottom .section .site_link a.btn:hover, #footer .bottom .section .site_link a.btn:focus
	{
	background: #7b8294
}

#footer .info b {
	color: #0055d5
}

#footer .info a, #footer .info span {
	vertical-align: middle;
	font-size: 15px;
	color: #3b3b3b;
	line-height: 30px;
}

#footer .info .bar {
	display: inline-block;
	margin: 0 13px;
	color: #3b3b3b;
}

#footer address em, #footer address span {
	font-size: 15px
}

#footer address {
	padding: 15px 0 0
}

#footer address em {
	font-style: normal;
	margin-right: 10px
}

#footer address span {
	font-size: 13px
}

#footer {
	clear: both
}

#footer .info a {
	vertical-align: middle;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

#footer .info a b {
	font-size: 105%
}

#footer .info a.admin {
	font-weight: bold;
	color: #2b74c0
}

.footer .site_link>div>div, #footer .site_link>div>div {
	position: relative;
	display: inline-block;
	zoom: 1;
	*display: inline;
	margin: 0;
	vertical-align: middle;
	margin-right: -5px;
}

.footer .site_link>div>div>a.fsite, #footer .site_link>div>div>a.fsite {
	display: block;
	padding: 3px 8px;
	border-right-width: 0;
	text-align: left;
	background: #babec9;
	color: #fff;
}

.footer .site_link>div>div>ul, #footer .site_link>div>div>ul {
	position: absolute;
	bottom: 34px;
	left: 0;
	width: 100%;
	text-align: left;
	border-top: 1px solid #ccc;
	background: #fff
}

.footer .site_link>div>div>ul, #footer .site_link>div>div>ul {
	overflow-y: auto;
	border-right: 1px solid #ccc
}

.footer .site_link>div>div>ul>li, #footer .site_link>div>div>ul>li {
	line-height: 25px;
	border-left: 1px solid #ccc
}

.footer .site_link>div>div>ul>li>a, #footer .site_link>div>div>ul>li>a {
	color: #666;
	display: block;
	padding: 3px 6px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.footer .site_link>div>div>a>span, #footer .site_link>div>div>a>span {
	display: inline-block;
	zoom: 1;
	*display: inline;
	vertical-align: middle;
	line-height: 28px;
	height: 28px
}

.footer .site_link>div>div>a>span.f1, #footer .site_link>div>div>a>span.f1
	{
	display: block;
	width: 100%;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis
}

.footer .site_link>div>div>a>span.f2, #footer .site_link>div>div>a>span.f2
	{
	position: absolute;
	right: 7px;
	top: 0;
	width: 20px
}

.footer .site_link>div>div>a>span>i, #footer .site_link>div>div>a>span>i
	{
	border-color: #888 transparent transparent transparent;
	border-style: solid;
	border-width: 5px 4px 0 4px;
	width: 0;
	height: 0;
	left: 50%;
	position: absolute;
	top: 50%
}

.footer .site_link>div>div>a>span>i, .footer .site_link>div>div>a:hover>span>i,
	#footer .site_link>div>div>a>span>i, #footer .site_link>div>div>a:hover>span>i
	{
	margin-top: -2px
}

.footer .site_link>div>div>a.active>span>i, #footer .site_link>div>div>a.active>span>i
	{
	border-color: transparent transparent #888 transparent;
	border-width: 0 4px 5px 4px
}

.footer .site_link>div>div>ul>li>a.disabled, #footer .site_link>div>div>ul>li>a.disabled
	{
	color: #999
}

.footer .site_link>div>div>ul>li>a:hover, #footer .site_link>div>div>ul>li>a:hover
	{
	background: #5897fb;
	color: #fff;
}

.main1 .section .txt .t2 {
	padding-top: 5px;
	padding-bottom: 15px
}

.main .bx-controls.mainImg .bx-pager {
	display: block
}

</Style>


<footer class="site-footer">
	<a href="#top" class="smoothscroll scroll-top"> <span
		class="icon-keyboard_arrow_up"></span>
	</a>

	<div class="container">

		<div id="footer">

			<div class="bottom">
				<div class="section" style="position: relative;">
					<div class="site_link">
						<div>
							<div class="dropdown bootstrap-select">
								<a class="fsite type1"> <span class="f1">대구광역시 공공도서관</span>
									<span class="f2"><i></i></span></a>
								<ul style="display: none">
									<li class="disabled"><a title="대구광역시통합도서관"
										href="http://library.daegu.go.kr/dgportal/index.do">대구광역시통합도서관</a></li>
									<li class="disabled"><a title="대구2ㆍ28기념학생도서관"
										href="http://library.daegu.go.kr/228/index.do">대구2ㆍ28기념학생도서관</a></li>
									<li class="disabled"><a title="대구2ㆍ28민주운동기념회관"
										href="http://library.daegu.go.kr/228lib/index.do">대구2ㆍ28민주운동기념회관</a></li>
									<li class="disabled"><a title="대구광역시립 남부도서관"
										href="http://library.daegu.go.kr/nambu/index.do">대구광역시립
											남부도서관</a></li>
									<li class="disabled"><a title="대구광역시립 달성도서관"
										href="http://library.daegu.go.kr/dalseong/index.do">대구광역시립
											달성도서관</a></li>
									<li class="disabled"><a title="대구광역시립 동부도서관"
										href="http://library.daegu.go.kr/dongbu/index.do">대구광역시립
											동부도서관</a></li>
									<li class="disabled"><a title="대구광역시립 두류도서관"
										href="http://library.daegu.go.kr/duryu/index.do">대구광역시립
											두류도서관</a></li>
									<li class="disabled"><a title="대구광역시립 북부도서관"
										href="http://library.daegu.go.kr/bukbu/index.do">대구광역시립
											북부도서관</a></li>
									<li class="disabled"><a title="대구광역시립 북부도서관"
										href="http://library.daegu.go.kr/seobu/index.do">대구광역시립
											서부도서관</a></li>
									<li class="disabled"><a title="대구광역시립 수성도서관"
										href="http://library.daegu.go.kr/suseong/index.do">대구광역시립
											수성도서관</a></li>
									<li class="disabled"><a title="대구광역시립 중앙도서관"
										href="http://library.daegu.go.kr/jungang/index.do">대구광역시립
											중앙도서관</a></li>

									<!-- <li class="disabled"><a href="#">대구광역시 공공도서관</a></li> -->
									<li class="disabled"><a title="남구대명어울림도서관"
										href="http://library.daegu.go.kr/namdm/index.do">남구대명어울림도서관</a></li>
									<li class="disabled"><a title="남구이천어울림도서관"
										href="http://library.daegu.go.kr/namic/index.do">남구이천어울림도서관</a></li>
									<li class="disabled"><a title="달서구립도서관"
										href="http://library.daegu.go.kr/dalseolib/index.do">달서구통합도서관</a></li>
									<li class="disabled"><a title="달성군립도서관"
										href="http://library.daegu.go.kr/dalseonglib/index.do">달성군립도서관</a></li>
									<li class="disabled"><a title="동구통합도서관"
										href="http://library.daegu.go.kr/donggu/index.do">동구통합도서관</a></li>
									<li class="disabled"><a title="북구구수산도서관"
										href="http://library.daegu.go.kr/bukgs/index.do">북구구수산도서관</a></li>
									<li class="disabled"><a title="북구대현도서관"
										href="http://library.daegu.go.kr/bukdh/index.do">북구대현도서관</a></li>
									<li class="disabled"><a title="북구태전도서관"
										href="http://library.daegu.go.kr/buktj/index.do">북구태전도서관</a></li>
									<li class="disabled"><a title="서구통합도서관"
										href="http://library.daegu.go.kr/seogulib/index.do">서구통합도서관</a></li>
									<li class="disabled"><a title="수성구범어도서관"
										href="http://library.daegu.go.kr/beomeo/index.do">수성구범어도서관</a></li>
									<li class="disabled"><a title="수성구용학도서관"
										href="http://library.daegu.go.kr/yonghak/index.do">수성구용학도서관</a></li>
									<li class="disabled"><a title="수성구고산도서관"
										href="http://library.daegu.go.kr/gosan/index.do">수성구고산도서관</a></li>
									<li class="disabled"><a title="중구통합도서관"
										href="http://library.daegu.go.kr/junggu/index.do">중구통합도서관</a></li>
								</ul>
							</div>
							<a href="#" class="btn">이동</a>
						</div>
						<div>
							<div>
								<a class="fsite type1"> <span class="f1">교육 및 지역관련기관</span>
									<span class="f2"><i></i></span></a>
								<ul style="display: none">
									<li class="disabled"><a href="#">교육 및 지역관련기관</a></li>
									<li class="disabled"><a title="대구광역시교육청"
										href="http://www.dge.go.kr">대구광역시교육청</a></li>
									<li class="disabled"><a title="동부교육지원청"
										href="http://www.dgdbe.go.kr/dgdbe/main.do">동부교육지원청</a></li>
									<li class="disabled"><a title="서부교육지원청"
										href="http://www.dgsbe.go.kr">서부교육지원청</a></li>
									<li class="disabled"><a title="남부교육지원청"
										href="http://www.dgnbe.go.kr">남부교육지원청</a></li>
									<li class="disabled"><a title="달성교육지원청"
										href="http://www.dgdse.go.kr">달성교육지원청</a></li>
									<li class="disabled"><a title="대구광역시교육연수원"
										href="http://edu.deti.or.kr">대구광역시교육연수원</a></li>
									<li class="disabled"><a title="대구창의융합교육원"
										href="http://www.dge.go.kr/dicce">대구창의융합교육원</a></li>
									<li class="disabled"><a title="대구학생문화센터"
										href="http://www.dge.go.kr/dccs">대구학생문화센터</a></li>
									<li class="disabled"><a title="대구미래교육연구원"
										href="http://www.dge.go.kr/dferi">대구미래교육연구원</a></li>
									<li class="disabled"><a title="대구교육해양수련원"
										href="http://www.dge.go.kr/dgsea">대구교육해양수련원</a></li>
									<li class="disabled"><a title="대구광역시유아교육진흥원"
										href="http://www.dge.go.kr/daegu-i">대구광역시유아교육진흥원</a></li>
									<li class="disabled"><a title="대구교육낙동강수련원"
										href="http://www.dge.go.kr/dgeriver">대구교육낙동강수련원</a></li>
									<li class="disabled"><a title="대구교육팔공산수련원"
										href="http://www.dge.go.kr/palgongsan">대구교육팔공산수련원</a></li>
									<li class="disabled"><a title="대구교육박물관"
										href="http://www.dge.go.kr/dme">대구교육박물관</a></li>
									<li class="disabled"><a title="대구교육시설지원센터"
										href="http://www.dge.go.kr/defsc">대구교육시설지원센터</a></li>
									<li class="disabled"><a title="대구평생학습포털"
										href="https://tong.daegu.go.kr/">대구평생학습포털</a></li>
								</ul>
							</div>
							<a href="#" class="btn">이동</a>
							
						</div>
					</div>
					<div class="foot-info">
						<div class="info">
							<a href="/dmsl/html.do?menu_idx=75"><b>개인정보처리방침</b></a> <span
								class="bar">|</span>
							<!-- <a href="/dmsl/html.do?menu_idx=95">이메일무단수집거부</a>
						<span class="bar">|</span> -->
							<a href="/dmsl/html.do?menu_idx=77">이용약관</a>
						</div>
					</div>
					<address>
						<p>
							<em>(41912) 대구 중구 공평로 83 (동문동)</em><br class="mobileBr" /> <em>전화
								: <b>053-803-6060, 6061</b>
							</em>
							<!--<em>/</em>
						<em>팩스 <b></b></em> -->
						</p>
						<p class="copyright">
							<small> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>
									document.write(new Date().getFullYear());
								</script> DAEGU <a href="http://www.daeguoracle.com/" target="_blank">YEDAM</a>
								SMALL LIBRARY. ALL RIGHTS RESERVED. Colorlib <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small>
						</p>
					</address>
				</div>
			</div>
		</div>
	</div>
</footer>