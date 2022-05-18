<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">

    </head>

    <body>
      <!-- START: header -->

      <header role="banner" class="probootstrap-header">
        <!-- <div class="container"> -->
        <div class="row">
          <a href="index.html" class="probootstrap-logo visible-xs"><img src="/resources/img/hotel_logo.png"
              class="hires" width="250" height="84" alt="Free Bootstrap Template by uicookies.com"></a>

          <a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
          <div class="mobile-menu-overlay"></div>

          <nav role="navigation" class="probootstrap-nav hidden-xs">
            <ul class="probootstrap-main-nav">
              <li><a href="/">Home</a></li>
              <li class="active"><a href="/room">호텔방 소개</a></li>
              <li><a href="/booking/booking">예약</a></li>
              <li class="hidden-xs probootstrap-logo-center"><a href="/"><img src="/resources/img/hotel_logo.png"
                    class="hires" width="250" height="84" alt="Free Bootstrap Template by uicookies.com"></a></li>
              <li><a href="/question/questionList">후기</a></li>

              <c:if test="${empty memberId }">
                <li><a href="/member/join">회원가입</a></li>
                <li><a href="/member/login">로그인</a></li>
              </c:if>
              <c:if test="${not empty memberId }">
                <li><a href="/booking/bookingList">마이페이지</a></li>
                <li><a href="/member/logout">로그아웃</a></li>
              </c:if>

            </ul>
            <div class="extra-text visible-xs">
              <a href="#" class="probootstrap-burger-menu"><i>메뉴</i></a>
              <h5>Connect With Us</h5>
              <ul class="social-buttons">
                <li><a href="#"><i class="icon-twitter"></i></a></li>
                <li><a href="#"><i class="icon-facebook2"></i></a></li>
                <li><a href="#"><i class="icon-instagram2"></i></a></li>
              </ul>
            </div>
          </nav>
        </div>
        <!-- </div> -->
      </header>
      <!-- END: header -->
    </body>

    </html>