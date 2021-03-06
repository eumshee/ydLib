<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>예담작은도서관</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Free-Template.co" />
	
	<!-- FONT -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="resources/fonts/line-icons/style.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">
    <link rel="stylesheet" href="resources/css/custom-bs.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<link rel="stylesheet" href="resources/vendor/datatables/dataTables.bootstrap4.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="resources/css/style.css">    
</head>
<body id="top">
	<div id="overlayer"></div>
	<div class="loader">
	  <div class="spinner-border text-primary" role="status">
	    <span class="sr-only">Loading...</span>
	  </div>
	</div>
	    
	<div class="site-wrap">
	    <div class="site-mobile-menu site-navbar-target">
	      <div class="site-mobile-menu-header">
	        <div class="site-mobile-menu-close mt-3">
	          <span class="icon-close2 js-menu-toggle"></span>
	        </div>
	      </div>
	      <div class="site-mobile-menu-body"></div>
	</div> <!-- .site-mobile-menu -->
	
	<tiles:insertAttribute name="header" />
	
	<tiles:insertAttribute name="body" />
	
	<tiles:insertAttribute name="foot" />
	</div>
	
    <!-- SCRIPTS -->
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/isotope.pkgd.min.js"></script>
    <script src="resources/js/stickyfill.min.js"></script>
    <script src="resources/js/jquery.fancybox.min.js"></script>
    <script src="resources/js/jquery.easing.1.3.js"></script>
    
    <script src="resources/js/jquery.waypoints.min.js"></script>
    <script src="resources/js/jquery.animateNumber.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    
    <script src="resources/js/bootstrap-select.min.js"></script>
    
    <script src="resources/js/custom.js"></script>

    <script src="resources/js/default-new.js"></script>

	<!-- DATATABLES PLUGINS -->
	<script src="resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="resources/vendor/datatables/datatables-demo.js"></script>
</body>
</html>