<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>예담작은도서관</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
</head>
<body id="top">
	<div id="overlayer"></div>
	<div class="loader">
	  <div class="spinner-border text-primary" role="status">
	    <span class="sr-only">Loading...</span>
	  </div>
	</div>
	
	<div class="site-wrap">
		<tiles:insertAttribute name="content" />
	</div>
</body>
</html>