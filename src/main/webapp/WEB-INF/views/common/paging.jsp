<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<div class="pagination">
			    <a href="javascript:goPage(${param.firstPageNo} ,'${reqVO.book_Order }' , '${reqVO.book_Title }' , '${reqVO.book_Aut }' ,'${reqVO.book_Pub }')" class="first">처음페이지</a>
			    <a href="javascript:goPage(${param.firstPageNo} ,'${reqVO.book_Order }' , '${reqVO.book_Title }' , '${reqVO.book_Aut }' ,'${reqVO.book_Pub }')" class="prev">이전</a>
			    <span>
			        <c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
			            <c:choose>
			                <c:when test="${i eq param.pageNo}"><a href="javascript:goPage(${i}  ,'${reqVO.book_Order }', '${reqVO.book_Title }' , '${reqVO.book_Aut }' ,'${reqVO.book_Pub }')" class="active">${i}</a></c:when>
			                <c:otherwise><a href="javascript:goPage(${i} ,'${reqVO.book_Order }' , '${reqVO.book_Title }' , '${reqVO.book_Aut }' ,'${reqVO.book_Pub }')">${i}</a></c:otherwise>
			            </c:choose>
			        </c:forEach>
			    </span>
			    <a href="javascript:goPage(${param.nextPageNo} ,'${reqVO.book_Order }' , '${reqVO.book_Title }' , '${reqVO.book_Aut }' ,'${reqVO.book_Pub }')" class="next">다음</a>
			    <a href="javascript:goPage(${param.finalPageNo} ,'${reqVO.book_Order }' , '${reqVO.book_Title }' , '${reqVO.book_Aut }' ,'${reqVO.book_Pub }')" class="last">마지막페이지</a>
			</div>
</body>
</html>