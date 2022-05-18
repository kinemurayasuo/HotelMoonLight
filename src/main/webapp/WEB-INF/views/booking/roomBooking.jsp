<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>예약</title>
			<meta name="description" content="Free Bootstrap Theme by uicookies.com">
			<meta name="keywords"
				content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
			<link rel="stylesheet" href="/resources/css/styles-merged.css">
			<link rel="stylesheet" href="/resources/css/style.min.css">
			<link rel="stylesheet" href="/resources/css/font.css">
			<meta name="robots" content="noindex, nofollow">
		</head>

		<body>
			<%@ include file="/WEB-INF/views/menuBar/bookingMenuBar.jsp" %>

				<section class="probootstrap-slider flexslider probootstrap-inner">
					<ul class="slides">
						<li style="background-image: url(/resources/img/slider_1.jpg);" class="overlay">
							<div class="container">
								<div class="row">
									<div class="col-md-10 col-md-offset-1">
										<div class="probootstrap-slider-text text-center">
											<p><img src="/resources/img/curve_white.svg"
													class="seperator probootstrap-animate"
													alt="Free HTML5 Bootstrap Template"></p>
											<h1 class="probootstrap-heading probootstrap-animate">객실</h1>
											<div class="probootstrap-animate probootstrap-sub-wrap">창 밖으로 펼쳐지는 오션뷰와
												현대적으로 재해석한 호텔 문라이트의 객실은<br>안락함과 편안함을 더하고 깔끔한 인테리어와 절제된 디자인으로 준비 되어 있습니다.
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</section>
				<section class="probootstrap-section">
					<div class="container">
						<c:if test="${impossible1 ne 'impossible1'}">
							<div class="row">
								<div class="col-md-4 col-sm-6 col-xs-12">
									<div class="probootstrap-room">
										<a onclick="iamport1();"><img src="/resources/img/room/roomClassic.jpg"
												alt="Free Bootstrap Template by uicookies.com"
												class="img-responsive"></a>
										<div class="text">
											<h3>Classic</h3>
											<p>최저 <strong>120,000 KRW/Night</strong></p>
											<div class="post-meta mb30">
												<p>심플한 인테리어와 아늑한 분위기가 편안함을 더해주는 객실로 여우롭고 기분 좋은 하루를 선사합니다.</p>
												<table style="width: 280px; height: 50px">
													<tr>
														<td>방 크기</td>
														<td>31㎡ / (9평)</td>
													</tr>
													<tr>
														<td>침대 사이즈</td>
														<td>더블, 트윈(더블, 싱글)</td>
													</tr>
												</table>
											</div>
											<form action="/booking/completeBooking" id="form1" method="post">
												<input type="hidden" name="bookingStart"
													value="${booking.bookingStart}">
												<input type="hidden" name="bookingEnd" value="${booking.bookingEnd}">
												<input type="hidden" name="adult" value="${booking.adult}">
												<input type="hidden" name="child" value="${booking.child}">
												<input type="hidden" name="roomType" value="Classic">
												<input type="hidden" name="userId" value="${sessionScope.loginId }">
												<input type="button" value="120,000 KRW 예약하기" class="btn btn-primary"
													onclick="iamport1();">
											</form>
										</div>
									</div>
								</div>
						</c:if>
						<c:if test="${impossible2 ne 'impossible2'}">

							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="probootstrap-room">
									<a onclick="iamport2();"><img src="/resources/img/room/roomGrandDeluxe.jpg"
											alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
									<div class="text">
										<h3>Deluxe</h3>
										<p>최저 <strong>180,000 KRW/Night</strong></p>
										<div class="post-meta mb30">
											<p>이국적인 뷰가 아름다운 디럭스 객실은 현대적인 감각의 가구와 소품의 스타일링이 돋보이는 객실입니다.</p>
											<table style="width: 280px; height: 50px">
												<tr>
													<td>방 크기</td>
													<td>40~50 ㎡ / (12평 ~ 15평)</td>
												</tr>
												<tr>
													<td>침대 사이즈</td>
													<td>더블, 트윈(더블, 싱글)</td>
												</tr>
											</table>
										</div>
										<form action="/booking/completeBooking" id="form2" method="post">
											<input type="hidden" name="bookingStart" value="${booking.bookingStart}">
											<input type="hidden" name="bookingEnd" value="${booking.bookingEnd}">
											<input type="hidden" name="adult" value="${booking.adult}">
											<input type="hidden" name="child" value="${booking.child}">
											<input type="hidden" name="roomType" value="Deluxe">
											<input type="hidden" name="userId" value="${sessionScope.loginId }">
											<input type="button" value="180,000 KRW 예약하기" class="btn btn-primary"
												onclick="iamport2();">
										</form>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${impossible3 ne 'impossible3'}">
							<div class="clearfix visible-sm-block"></div>
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="probootstrap-room">
									<a onclick="iamport3();"><img src="/resources/img/room/roomUltraSuperior.jpg"
											alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
									<div class="text">
										<h3>Superior</h3>
										<p>최저 <strong>180,000 KRW/Night</strong></p>
										<div class="post-meta mb30">
											<p>한층 여유롭고 쾌적한 수페리어 객실은 최상의 안락함과 품격 있는 서비스로 편안함을 제공해드립니다.</p>
											<table style="width: 280px; height: 50px">
												<tr>
													<td>방 크기</td>
													<td>46~60 ㎡ / (14평 ~ 18평)</td>
												</tr>
												<tr>
													<td>침대 사이즈</td>
													<td>더블, 트윈(더블, 싱글)</td>
												</tr>
											</table>
										</div>
										<form action="/booking/completeBooking" id="form3" method="post">
											<input type="hidden" name="bookingStart" value="${booking.bookingStart}">
											<input type="hidden" name="bookingEnd" value="${booking.bookingEnd}">
											<input type="hidden" name="adult" value="${booking.adult}">
											<input type="hidden" name="child" value="${booking.child}">
											<input type="hidden" name="roomType" value="Superior">
											<input type="hidden" name="userId" value="${sessionScope.loginId }">
											<input type="button" value="180,000 KRW 예약하기" class="btn btn-primary"
												onclick="iamport3();">
										</form>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${impossible4 ne 'impossible4'}">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="probootstrap-room">
									<a onclick="iamport4();"><img src="/resources/img/room/roomGrandDeluxe2.jpg"
											alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
									<div class="text">
										<h3>Premier</h3>
										<p>최저 <strong>250,000 KRW/Night</strong></p>
										<div class="post-meta mb30">
											<p>모던한 가구와 빈티지 소품들이 잘 어울려진 프리미어 객실로 일상 속 편안함과 여유를 선사합니다.</p>
											<table style="width: 280px; height: 50px">
												<tr>
													<td>방 크기</td>
													<td>70~86 ㎡ / (21평 ~ 26평)</td>
												</tr>
												<tr>
													<td>침대 사이즈</td>
													<td>더블, 트윈(더블, 싱글)</td>
												</tr>
											</table>
										</div>
										<form action="/booking/completeBooking" id="form4" method="post">
											<input type="hidden" name="bookingStart" value="${booking.bookingStart}">
											<input type="hidden" name="bookingEnd" value="${booking.bookingEnd}">
											<input type="hidden" name="adult" value="${booking.adult}">
											<input type="hidden" name="child" value="${booking.child}">
											<input type="hidden" name="roomType" value="Premier">
											<input type="hidden" name="userId" value="${sessionScope.loginId }">
											<input type="button" value="250,000 KRW 예약하기" class="btn btn-primary"
												onclick="iamport4();">
										</form>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${impossible5 ne 'impossible5'}">
							<div class="clearfix visible-sm-block"></div>
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="probootstrap-room">
									<a onclick="iamport5();"><img src="/resources/img/room/roomUltraSuperior2.jpg"
											alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
									<div class="text">
										<h3>Deluxe Suite</h3>
										<p>최저 <strong>300,000 KRW/Night</strong></p>
										<div class="post-meta mb30">
											<p>문나이트 호텔의 최고층에 위치한 객실로 클래식하고 기품 있는 분위기를 느끼며 최상의 휴식을 누를 수 있습니다.</p>
											<table style="width: 280px; height: 50px">
												<tr>
													<td>방 크기</td>
													<td>120 ㎡ / (36평)</td>
												</tr>
												<tr>
													<td>침대 사이즈</td>
													<td>더블, 트윈(더블, 싱글)</td>
												</tr>
											</table>
										</div>
										<form action="/booking/completeBooking" id="form5" method="post">
											<input type="hidden" name="bookingStart" value="${booking.bookingStart}">
											<input type="hidden" name="bookingEnd" value="${booking.bookingEnd}">
											<input type="hidden" name="adult" value="${booking.adult}">
											<input type="hidden" name="child" value="${booking.child}">
											<input type="hidden" name="roomType" value="DeluxeSuite">
											<input type="hidden" name="userId" value="${sessionScope.loginId }">
											<input type="button" value="300,000 KRW 예약하기" class="btn btn-primary"
												onclick="iamport5();">
										</form>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${impossible6 ne 'impossible6'}">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="probootstrap-room">
									<a onclick="iamport6();"><img src="/resources/img/room/roomPresidential.jpg"
											alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
									<div class="text">
										<h3>Family Suite</h3>
										<p>최저 <strong>250,000 KRW/Night</strong></p>
										<div class="post-meta mb30">
											<p>넒은 객실과 거실, 드래스룸이 분리된 패밀리 공간에서 고품격 라이프 스타일을 즐길 수 있습니다.</p>
											<table style="width: 280px; height: 50px">
												<tr>
													<td>방 크기</td>
													<td>46 ㎡ / (14평)</td>
												</tr>
												<tr>
													<td>침대 사이즈</td>
													<td>더블, 트윈(더블, 싱글)</td>
												</tr>
											</table>
										</div>
										<form action="/booking/completeBooking" id="form6" method="post">
											<input type="hidden" name="bookingStart" value="${booking.bookingStart}">
											<input type="hidden" name="bookingEnd" value="${booking.bookingEnd}">
											<input type="hidden" name="adult" value="${booking.adult}">
											<input type="hidden" name="child" value="${booking.child}">
											<input type="hidden" name="roomType" value="FamilySuite">
											<input type="hidden" name="userId" value="${sessionScope.loginId }">
											<input type="button" value="250,000 KRW 예약하기" class="btn btn-primary"
												onclick="iamport6();">
										</form>
									</div>
								</div>
							</div>
							<div class="clearfix visible-sm-block"></div>
						</c:if>
					</div>
					</div>
				</section>
				<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
				<script type="text/javascript" src="/resources/js/iamport.js"> </script>
				<script src="/resources/js/scripts.min.js"></script>
				<script src="/resources/js/main.min.js"></script>
		</body>

		</html>