<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
		<html>

		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
			<link rel="stylesheet"
				href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<title>아이디/비밀번호 찾기</title>
			<link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
				rel="stylesheet">
			<link rel="stylesheet" href="/resources/css/styles-merged.css">
			<link rel="stylesheet" href="/resources/css/style.min.css">
			<link rel="stylesheet" href="/resources/css/memberFind.css">

			<meta name="description" content="Free Bootstrap Theme by uicookies.com">
			<meta name="keywords"
				content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

			<script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
			<script type="text/javascript">

				$(function () {
					$("#FindBtn").click(function () {
						location.href = "/member/memberFind";
					})

				})
			</script>
			<title>아이디 찾기</title>
		</head>

		<body>
			<%@ include file="/WEB-INF/views/menuBar/loginMenuBar.jsp" %>

				<form class="loginForm" action="/member/memberFind" method="post" onsubmit="return formCheck();">
					<div class="idForm">
						<c:if test='${memberFind.memberId != null}'>
							<h2>회원정보 검색 결과</h2>
							아이디는 ${memberFind.memberId} 입니다<br>
							비밀번호는 ${memberFind.memberPw} 입니다<br>
							<br>
							<a href="/member/login"><button type="button" id=loginBtn class='btn'> 로그인 페이지로
								</button></a>
						</c:if>
						<c:if test='${memberFind.memberId == null}'>
							<h2>회원정보 찾기</h2>
							<div class="passForm">

								<input type="text" id="email" name="memberEmail" class='email' placeholder="email"
									required>

							</div>

							<button type="submit" id=FindBtn class='btn'>find</button>
							<button type="button" onclick="history.go(-1);" class='btn'>Cancel</button>
						</c:if>
						<div style="color : red;">${error}</div>
					</div>
					<div>
					</div>





					<c:if test="${not empty error }">
					</c:if>
					<div class="row mt40">
						<div class="col-md-12 text-center">
							<ul class="probootstrap-footer-social">
								<li><a href=""><i class="icon-twitter"></i></a></li>
								<li><a href=""><i class="icon-facebook"></i></a></li>
								<li><a href=""><i class="icon-instagram2"></i></a></li>
							</ul>
							<p>
								<small>&copy; 2017 <a href="https://uicookies.com/"
										target="_blank">uiCookies:Atlantis</a>. All Rights Reserved. <br> Designed &amp;
									Developed by <a href="https://uicookies.com/" target="_blank">uicookies.com</a> Demo
									Images: Unsplash.com &amp; Pexels.com</small>
							</p>
						</div>
					</div>
				</form>
		</body>

		</html>