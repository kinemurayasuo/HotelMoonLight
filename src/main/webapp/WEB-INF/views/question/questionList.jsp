<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

		<!DOCTYPE html>

		<html lang="en">

		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>후기</title>
			<meta name="description" content="Free Bootstrap Theme by uicookies.com">
			<meta name="keywords"
				content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

			<link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
				rel="stylesheet">
			<link rel="stylesheet" href="/resources/css/styles-merged.css">
			<link rel="stylesheet" href="/resources/css/style.min.css">
			<link rel="stylesheet" href="/resources/css/reserveTable.css">

			<style>
				.button {
					border: 2px solid #903479;
					background: #903479;
					color: #fff;
					font-size: 14px;
					font-weight: 400;
					white-space: nowrap;
					padding: 8px 15px;
					display: inline-block;
					position: relative;
					left: 115px;
				}
			</style>
		</head>

		<body>
			<%@ include file="/WEB-INF/views/menuBar/questionMenuBar.jsp" %>

				<section class="probootstrap-slider flexslider probootstrap-inner">
					<ul class="slides">
						<li style="background-image: url(/resources/img/review.png);" class="overlay">
							<div class="container">
								<div class="row">
									<div class="col-md-10 col-md-offset-1">
										<div class="probootstrap-slider-text text-center">
											<p><img src="/resources/img/curve_white.svg"
													class="seperator probootstrap-animate"
													alt="Free HTML5 Bootstrap Template"></p>
											<h1 class="probootstrap-heading probootstrap-animate">후기</h1>
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

								<table>
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${empty questionList }">
												<tr>
													<td colspan="4">게시글이 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${questionList }" var="list">
													<tr>
														<td>${list.listNum }</td>
														<td>
															<a href="/question/question?listNum=${list.listNum }">
																${list.listTitle }
															</a>
														</td>
														<td>${list.memberNm }</td>
														<td>${list.listDate }</td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</tbody>

								</table>
								<div style="text-align: center;">
									<span>
										<c:if test="${navi.currentPage > 1 }">
											<a href="/question/questionList?currentPage=${(navi.currentGroup - 1) * 5 + 1 }"
												style="color=blue; text-decoration:none; text-align: center;font-size: 1.5em;">
												◀◀&nbsp;

											</a>
										</c:if>

										<c:forEach begin="${navi.startPageGroup }" end="${navi.endPageGroup }"
											var="pageNum">
											<c:if test="${pageNum == navi.currentPage }">
												<a href="/question/questionList?currentPage=${pageNum }"
													style="color : red; text-decoration:none;text-align: center;font-size: 1.5em;">
													<span style="color : red">
														${pageNum }
													</span>
												</a>
											</c:if>
											<c:if test="${pageNum != navi.currentPage }">
												<a href="/question/questionList?currentPage=${pageNum }"
													style="color : black; text-decoration:none;text-align: center;font-size: 1.5em;">
													<span>
														${pageNum }
													</span>
												</a>
											</c:if>
										</c:forEach>

										<c:if test="${navi.currentPage < navi.totalPageCount }">
											<a href="/question/questionList?currentPage=${(navi.currentGroup + 1) * 5 + 1 }"
												style="color=blue; text-decoration:none;text-align: center; font-size: 1.5em;">
												▶▶
											</a>
										</c:if>

									</span>
								</div>
								<div style="text-align: center;">
									<form action="/question/searchQuestion" method="get">
										<select name="searchType" style="width:80px;height:33px;">
											<option value="questionTitle">제목</option>
											<option value="questionContent">내용</option>
											<option value="memberNm">작성자</option>
										</select>
										<input type="text" name="searchWord">
										<input type="submit" value="검색하기" class="btn btn-primary">
									</form>
									<br>
									<input type="button" value="글 쓰기"
										onclick="location.href = '/question/questionListWrite';" id="submit"
										class="btn btn-primary">
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
								<small>&copy; 2017 <a href="https://uicookies.com/"
										target="_blank">uiCookies:Atlantis</a>. All Rights Reserved. <br> Designed &amp;
									Developed by <a href="https://uicookies.com/" target="_blank">uicookies.com</a> Demo
									Images: Unsplash.com &amp; Pexels.com</small>
							</p>

						</div>
					</div>
					<!-- END: footer -->
					<script src="/resources/js/scripts.min.js"></script>
					<script src="/resources/js/main.min.js"></script>
					<script src="/resources/js/custom.js"></script>
		</body>

		</html>