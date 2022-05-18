<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>

		<html lang="kr">

		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>예약 조회</title>

			<meta name="description" content="Free Bootstrap Theme by uicookies.com">
			<meta name="keywords"
				content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

			<link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
				rel="stylesheet">
			<link rel="stylesheet" href="/resources/css/styles-merged.css">
			<link rel="stylesheet" href="/resources/css/style.min.css">
			<link rel="stylesheet" href="/resources/css/reserveTable.css">
			<script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
			<script type="text/javascript">
				function cancleBooking() {
					var result = confirm("정말 취소하겠습니까?");

					if (result) {
						alert("취소가 완료되었습니다.")
						return true;
					}
					else {
						return false;
					}
				}
			</script>
		</head>

		<body>
			<%@ include file="/WEB-INF/views/menuBar/myPageMenuBar.jsp" %>


				<section class="probootstrap-slider flexslider probootstrap-inner">
					<ul class="slides">
						<li style="background-image: url('/resources/img/reservation.png');" class="overlay">
							<div class="container">
								<div class="row">
									<div class="col-md-10 col-md-offset-1">
										<div class="probootstrap-slider-text text-center">
											<p><img src="/resources/img/curve_white.svg"
													class="seperator probootstrap-animate"></p>
											<h1 class="probootstrap-heading probootstrap-animate">예약 내역</h1>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</section>



				<br>
				<br>
				<br>
				<br>
				<table class="contentsTable">
					<tr>
						<th>NO</th>
						<th>성함</th>
						<th>성인 투숙객 수(명)</th>
						<th>어린이 투숙객 수(명)</th>
						<th>체크인</th>
						<th>체크아웃</th>
						<th>객실</th>
						<th>예약시간</th>
						<th>예약상태</th>
					</tr>
					<c:choose>
						<c:when test="${empty bookingList }">
							<tr>
								<td colspan="9">예약이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${bookingList }" var="book">
								<tr>
									<td>${book.bookingNum }</td>
									<td>${sessionScope.memberNm }</td>
									<td>${book.adult }</td>
									<td>${book.child }</td>
									<td>${book.bookingStart }</td>
									<td>${book.bookingEnd }</td>
									<td>${book.roomType }</td>
									<td>${book.bookingDate }</td>
									<c:if test="${book.bookingStatus == '1'}">
										<td>예약 완료
											<form action="/booking/cancleBooking" method="post"
												onsubmit="return cancleBooking();">
												<input type="hidden" name="memberId" value="${sessionScope.memberId }">
												<input type="hidden" name="bookingNum" value="${book.bookingNum }">
												<input type="hidden" name="roomType" value="${book.roomType }">
												<input type="submit" value="예약 취소" />
											</form>
										</td>
									</c:if>
									<c:if test="${book.bookingStatus == '0'}">
										<td>취소 완료</td>
									</c:if>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<br><br>
				<nav role="navigation" class="probootstrap-nav hidden-xs">
					<ul class="probootstrap-main-nav">
						<li><a href="/member/memberInfo" style="font-size: 1.5em;text-align:left;">
								회원 정보 수정</a></li>
					</ul>
				</nav>

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
				</div>
				</footer>
				<!-- END: footer -->



				<script src="/resources/js/scripts.min.js"></script>
				<script src="/resources/js/main.min.js"></script>
				<script src="/resources/js/custom.js"></script>

		</body>

		</html>