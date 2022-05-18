<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <title>로그인</title>
      <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
        rel="stylesheet">
      <link rel="stylesheet" href="/resources/css/styles-merged.css">
      <link rel="stylesheet" href="/resources/css/style.min.css">
      <link rel="stylesheet" type="text/css" href="/resources/css/login.css">
      <script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
      <script type="text/javascript" src="/resources/js/custom/login.js"></script>
    </head>

    <body>
      <%@ include file="/WEB-INF/views/menuBar/loginMenuBar.jsp" %>

        <br>
        <form action="/member/login" method="post" class="loginForm" onsubmit="return formChk();">
          <h2>로그인</h2>
          <div class="idForm">
            <input type="text" class="id" name="memberId" id="memberId" placeholder="ID">
          </div>
          <div class="passForm">
            <input type="password" class="pw" name="memberPw" id="memberPw" placeholder="PW">
          </div>
          <button type="submit" class="btn">
            로그인하기
          </button><br>
          <span style="color : red;">${error1}</span>
          <div style="color : red;">${error2}</div>
          <br>
          <div class="bottomText">
            <a href="/member/join">회원가입</a>
          </div>
          <div class="bottomText">
            <a href="/member/memberFind" id="memberFind"><br>아이디/비밀번호 찾기</a>
          </div>

          <c:if test="${empty error1 }">
            <br><br>
          </c:if>
          <div class="row mt40">
            <div class="col-md-12 text-center">
              <ul class="probootstrap-footer-social">
                <li><a href=""><i class="icon-twitter"></i></a></li>
                <li><a href=""><i class="icon-facebook"></i></a></li>
                <li><a href=""><i class="icon-instagram2"></i></a></li>
              </ul>
              <p>
                <small>&copy; 2017 <a href="https://uicookies.com/" target="_blank">uiCookies:Atlantis</a>. All Rights
                  Reserved. <br> Designed &amp; Developed by <a href="https://uicookies.com/"
                    target="_blank">uicookies.com</a> Demo Images: Unsplash.com &amp; Pexels.com</small>
              </p>
            </div>
          </div>
        </form>
    </body>

    </html>