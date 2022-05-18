<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>새 글 작성</title>

			<head>
				<link rel="stylesheet" type="text/css" href="/resources/css/board.css">
				<link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
					rel="stylesheet">
				<link rel="stylesheet" href="/resources/css/styles-merged.css">
				<link rel="stylesheet" href="/resources/css/style.min.css">

				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<title>새 글 작성</title>
				<meta name="description" content="Free Bootstrap Theme by uicookies.com">
				<meta name="keywords"
					content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
				<script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
				<script type="text/javascript">
					function formCheck() {
						var listTitle = document.getElementById('listTitle');
						var listContent = document.getElementById('listContent');

						if (listTitle.value == '') {
							alert("제목을 입력하세요.");
							return false;
						}
						if (listContent.value == '') {
							alert("내용을 입력하세요.");
							return false;
						}
						return true;
					}
				</script>
			</head>

		<body>
			<%@ include file="/WEB-INF/views/menuBar/questionMenuBar.jsp" %>
				<form>
					<div class="textForm">
						<h2>후기 글 작성</h2>

						<p>저희 문라이트는 언제나 고객님의 목소리를 듣고 있습니다.<br>
							소중한 의견은 앞으로 더 나은 서비스를 만드는데 힘이 될 수 있습니다.</p>
					</div>
				</form>


				<form action="/question/questionListWrite" method="post" class="form" enctype="multipart/form-data"
					onsubmit="return formCheck();">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<table border="1" class="table">
									<tr>
										<td class="td1">제목</td>
										<td class="td3">
											<input class="td3" type="text" id="listTitle" name="listTitle"
												placeholder="문의 내용을 상의하게 적어 주시면 답변에 도움이 됩니다.">
										</td>
									</tr>
									<tr>
										<td class="td2">내용</td>
										<td class="td4">
											<input class="td4" id="listContent" name="listContent"
												placeholder="불건전한 내용 작성시 고지 없이 삭제 되오니 주의 바랍니다.">
										</td>
									</tr>
									<tr>
										<td class="td2">사진</td>
										<td>
											<input type="file" name="uploadFile">
										</td>
									<tr>
								</table>
								<button type="submit" class="btn btn-primary">
									작성하기
								</button>
								<button type="button" class="btn btn-primary"
									onclick="location.href='/question/questionList'">
									취소하기
								</button>
							</div>
						</div>
					</div>
				</form>
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
		</body>

		</html>