<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

    <html>
    <link rel="stylesheet" type="text/css" href="/resources/css/join.css">
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
      rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/styles-merged.css">
    <link rel="stylesheet" href="/resources/css/style.min.css">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회원가입</title>
    <meta name="description" content="Free Bootstrap Theme by uicookies.com">
    <meta name="keywords"
      content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/custom/join.js"></script>

    </head>

    <body>
      <%@ include file="/WEB-INF/views/menuBar/joinMenuBar.jsp" %>

        <form class="loginForm" action="/member/join" method="post">
          <h2>회원가입</h2>
          <div class="idForm">
            <input type="text" class="id" placeholder="ID" name="memberId" id="memberId" oninput="checkId()">
          </div>
          <div class="passForm">
            <input type="password" class="pw" placeholder="PW" name="memberPw" id="memberPw">
          </div>
          <div class="passForm">
            <input type="password" class="pwChk" placeholder="PWChk" name="memberPwChk" id="memberPwChk">
          </div>
          <div class="passForm">
            <input type="text" class="name" placeholder="Name" name="memberNm" id="memberNm">
          </div>
          <div class="passForm">
            <input type="text" class="tel" placeholder="tel" name="memberTel" id="memberTel">
          </div>
          <div class="passForm">
            <input type="email" class="email" placeholder="email" name="memberEmail" id="memberEmail">
          </div>

          <button type="submit" class="btn" onclick="return formChk();">
            회원가입하기
          </button>

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