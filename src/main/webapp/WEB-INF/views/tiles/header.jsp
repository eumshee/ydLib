<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- NAVBAR -->
<header class="site-navbar mt-3">
  <div class="container-fluid">
    <div class="row align-items-center">
      <div class="site-logo col-6"><a href="index.jsp">예담작은도서관</a></div>

      <nav class="mx-auto site-navigation">
        <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
        	<li><a href="test.do">테스트용</a></li>
          <li class="has-children">
            <a href="#">자료이용</a>
            <ul class="dropdown">
              <li><a href="#">통합자료검색</a></li>
              <li><a href="#">신착자료</a></li>
              <li><a href="#">대출 베스트</a></li>
              <li><a href="#">희망도서신청</a></li>
            </ul>
          </li>
          <li class="has-children">
            <a href="#">이용안내</a>
            <ul class="dropdown">
              <li><a href="#">찾아오시는 길</a></li>
              <li><a href="#">이용시간/휴관일</a></li>
              <li><a href="#">도서대출/반납</a></li>
              <li><a href="#">자료현황</a></li>
            </ul>
          </li>
          <li class="has-children">
            <a href="#">열린공간</a>
            <ul class="dropdown">
              <li><a href="noticeList.do">공지사항</a></li>
              <li><a href="#">묻고답하기</a></li>
            </ul>
          </li>
          <li class="has-children">
            <a href="#">나의도서관</a>
            <ul class="dropdown">
              <li><a href="#">대출내역조회</a></li>
              <li><a href="#">예약현황</a></li>
              <li><a href="#">희망도서 신청현황</a></li>
              <li><a href="#">내정보 수정</a></li>
            </ul>
          </li>
          <li>
            <a href="adminPage.do">관리자</a>
          </li>
          <li class="d-lg-none"><a href="#">로그인</a></li>
        </ul>
      </nav>
      
      <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
        <div class="ml-auto">
          <a href="#" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-lock_outline"></span>로그인</a>
        </div>
        <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span class="icon-menu h3 m-0 p-0 mt-2"></span></a>
      </div>

    </div>
  </div>
</header>