<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>

<style>
.half-highlight {
	font-weight: 600;
	color: #343a40;
}
	
}
</style>


<!-- 상단배너 -->
<section class="section-hero overlay inner-page bg-image"
	style="background-image: url('resources/images/main.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 class="text-white font-weight-bold">찾아오시는 길</h1>
				<div class="custom-breadcrumbs">
					<a href="home.do">Home</a> <span class="mx-2 slash">/</span> <span
						class="text-white"><strong>이용안내</strong></span>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<!-- 왼쪽네비 -->
			<div class="col-lg-3 mr-3">
				<div class="rounded">
					<div class="sidenav">
						<ul class="list-unstyled">
							<li class="sideactive"><a href="map.do">찾아오시는 길</a></li>
							<li><a href="opening.do">이용시간/휴관일</a></li>
							<li><a href="policy.do">도서대출/반납</a></li>
							<li><a href="material.do">자료현황</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--컨텐츠 영역-->

			<div class="col-lg-8">
				<div class="mb-5">
					<h3 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-map">&nbsp;</span><span class="half-highlight">찾아오시는 길</span>
					</h3>
					<div id="map" style="width:100%;height:400px;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8e4a673b96c7394ea9e0155a0f11fed"></script>
					<script>
						var mapContainer = document.getElementById('map'), 
						    mapOption = { 
						        center: new kakao.maps.LatLng(35.8700334, 128.5991697), // 지도 중심좌표
						        level: 4 // 지도의 확대 레벨
						    };
		
						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도생성
		
						var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // 마커이미지의 주소    
						    imageSize = new kakao.maps.Size(24, 35), // 마커이미지 크기
						    imageOption = {offset: new kakao.maps.Point(24, 35)}; // 이미지 안에서의 좌표
						      
						// 마커이미지 생성
						var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
						    markerPosition = new kakao.maps.LatLng(35.8700334, 128.5991697); // 마커표시위치
		
						// 마커생성
						var marker = new kakao.maps.Marker({
						    position: markerPosition, 
						    image: markerImage // 마커이미지 설정 
						});
		
						marker.setMap(map);  
					</script>

				</div>
				<div class="mb-5">
					<h4 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-institution">&nbsp;</span><span class="half-highlight">작은도서관 안내</span>
					</h4>
					<span class="icon-keyboard_arrow_right"></span>주소 : 대구광역시 중구 공평로 83(동문동 9-2)<br>
					<span class="icon-keyboard_arrow_right"></span>주차 : 대구시청 건너편 주차장 이용(대구시청 로비에서 주차 할인권 발급)<br>
				</div>
				<div class="mb-5">
					<h4 class="h4 d-flex align-items-center mb-4 text-primary box">
						<span class="icon-bus">&nbsp;</span><span class="half-highlight">교통편 안내</span>
					</h4>
						<h5>주변 지하철역</h5>
					<ul>
						<li>1호선(대구역 하차) : 시청 방향 도보 10분</li>
						<li>2호선(반월당역 하차) : 시청 방향 도보 20분</li>
					</ul>
						<h5>주변 버스정류장</h5>
					<ul>
						<li>대구광역시청 앞 : 524, 동구2, 급행6</li>
						<li>대구광역시청 건너 : 524, 동구2, 급행6</li>
						<li>국채보상운동기념공원 : 306, 323-1 , 403 , 805</li>
						<li>2·28기념중앙공원 앞 : 234, 240, 309, 425, 518, 650, 724, 909,
							939, 급행1, 급행3, 급행5, 급행6</li>
						<li>2·28기념중앙공원 건너1 : 518, 가창2, 급행1, 급행3, 급행5, 급행6</li>
						<li>2·28기념중앙공원 건너2 : 650, 909</li>
					</ul>
					<a href="https://businfo.daegu.go.kr/" target="_blank" class="newWin" title="새창으로 열립니다.">버스노선 검색&nbsp;<i class="icon-external-link"></i></a>
				</div>
			</div>
		</div>
	</div>
</section>