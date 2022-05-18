<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

		<!DOCTYPE html>

		<html lang="en">

		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>회원정보 수정</title>
			<meta name="description" content="Free Bootstrap Theme by uicookies.com">
			<meta name="keywords"
				content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

			<link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
				rel="stylesheet">
			<link rel="stylesheet" href="/resources/css/styles-merged.css">
			<link rel="stylesheet" href="/resources/css/style.min.css">
			<link rel="stylesheet" href="/resources/css/table.css">
			<link rel="stylesheet" href="/resources/css/memberInfo.css">

		</head>

		<body>
			<%@ include file="/WEB-INF/views/menuBar/myPageMenuBar.jsp" %>

				<section class="probootstrap-slider flexslider probootstrap-inner">
					<ul class="slides">
						<li style="background-image: url(/resources/img/memberInfo.png);" class="overlay">
							<div class="container">
								<div class="row">
									<div class="col-md-10 col-md-offset-1">
										<div class="probootstrap-slider-text text-center">
											<p><img src="/resources/img/curve_white.svg"
													class="seperator probootstrap-animate"
													alt="Free HTML5 Bootstrap Template"></p>
											<h1 class="probootstrap-heading probootstrap-animate">회원정보</h1>
											<div class="probootstrap-animate probootstrap-sub-wrap">Member Information :
												Your Everything</div>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</section>
				<br> <br>


				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="table-wrapper">
								<div id="center">
									<!-- 회원 정보 수정 -->
									<form action="/member/memberInfo" method="post"
										onsubmit="return formCheck('${memberPwChk}');" name="first">
										<table border="1">
											<tr>
												<th>이름</th>
												<td>
													<input type="text" name="memberNm" value="${sessionScope.memberNm }"
														disabled>
												</td>
											</tr>
											<tr>
												<th>아이디</th>
												<td>
													<input type="text" name="memberId" id="memberId"
														value="${sessionScope.memberId }" disabled>
												</td>
											</tr>
											<tr>
												<th>현재 비밀번호</th>
												<td>
													<input type="password" name="preMemberPw" id="preMemberPw"
														placeholder="현재 비밀번호">
												</td>
											</tr>
											<tr>
												<th>비밀번호 변경</th>
												<td>
													<input type="password" name="memberPw" id="memberPw"
														placeholder="3~12 글자로 입력"><br>
												</td>
											</tr>
											<tr>
												<th>비밀번호 재확인</th>
												<td>
													<input type="password" name="memberPwChk" id="memberPwChk"
														placeholder="대/소문자 주의">
												</td>
											</tr>
											<tr>
												<th>이메일</th>
												<td>
													<input type="text" name="memberEmail1" id="memberEmail1"
														placeholder="이메일 입력">
													@
													<input type="text" name="memberEmail2" id="memberEmail2" disabled>
													<select name="email" onchange="email_change();">
														<option value="0">이메일 선택</option>
														<option value="naver.com">naver.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="gmail.com">gmail.com</option>
														<option value="5">직접 입력</option>
													</select>
												</td>
											</tr>
											<tr>
												<th>핸드폰 번호</th>
												<td>
													<input type="text" name="memberTel" id="memberTel" maxlength="11"
														placeholder="ex) 01012345678">
												</td>
											</tr>
											<tr>
												<td colspan="2" style="text-align : center;">
													<input type="submit" value="확인" class="button"
														style="border-radius: 4px;">
													<input type="button" value="홈으로" onclick="location.href = '/';"
														class="button" style="border-radius: 4px;">
												</td>
											</tr>

										</table>
										<div style="text-align : center; margin-top : 50px;">
											<input type="button" value="회원 탈퇴"
												onclick="memberDelete('${memberPwChk }');" class="button"
												style="border-radius: 4px;">
										</div>
										<input type=hidden name=userInput id=userInput>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row mt40">
					<div class="col-md-12 text-center">
						<ul class="probootstrap-footer-social">
							<li><a href=""><i class="icon-twitter"></i></a></li>
							<li><a href=""><i class="icon-facebook"></i></a></li>
							<li><a href=""><i class="icon-instagram2"></i></a></li>
						</ul>
						<p>
							<small>&copy; 2017 <a href="https://uicookies.com/" target="_blank">uiCookies:Atlantis</a>.
								All Rights Reserved. <br> Designed &amp; Developed by <a href="https://uicookies.com/"
									target="_blank">uicookies.com</a> Demo Images: Unsplash.com &amp; Pexels.com</small>
						</p>

					</div>
				</div>

				<script src="/resources/js/scripts.min.js"></script>
				<script src="/resources/js/main.min.js"></script>
				<script src="/resources/js/custom.js"></script>
				<script type="text/javascript" src="/resources/js/custom/memberInfo.js"></script>
		</body>

		</html>