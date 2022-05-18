<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html lang="kr">

    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>예약</title>
      <meta name="description" content="Free Bootstrap Theme by uicookies.com">
      <meta name="keywords"
        content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

      <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
        rel="stylesheet">
      <link rel="stylesheet" href="/resources/css/styles-merged.css">
      <link rel="stylesheet" href="/resources/css/style.min.css">
      <script src="/resources/js/custom/booking.js"></script>

    </head>

    <body>
      <%@ include file="/WEB-INF/views/menuBar/bookingMenuBar.jsp" %>

        <section class="probootstrap-slider flexslider probootstrap-inner">
          <ul class="slides">
            <li style="background-image: url(/resources/img/check_in.png);" class="overlay">
              <div class="container">
                <div class="row">
                  <div class="col-md-10 col-md-offset-1">
                    <div class="probootstrap-slider-text text-center">
                      <h1 class="probootstrap-heading probootstrap-animate">객실 예약</h1>
                      <div class="probootstrap-animate probootstrap-sub-wrap">여행의 모든 순간이 특별한 감동으로 다가옵니다.</div>
                    </div>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </section>

        <section class="probootstrap-section">
          <div class="container">
            <div class="row probootstrap-gutter40">
              <div class="col-md-8">
                <h2 class="mt0">예약하기</h2>
                <form action="/booking/roomBooking" name="bookingForm" method="post" class="probootstrap-form"
                  onsubmit="return formChk();">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="date-arrival">체크인</label>
                        <div class="form-field">
                          <i class="icon icon-calendar2"></i>
                          <input type="text" class="form-control" id="date-arrival" name="bookingStart"
                            id="bookingStart">
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="date-departure">체크아웃</label>
                        <div class="form-field">
                          <i class="icon icon-calendar2"></i>
                          <input type="text" class="form-control" id="date-departure" name="bookingEnd" id="bookingEnd">
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="row mb30">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="adults">어른</label>
                        <div class="form-field">
                          <i class="icon icon-chevron-down"></i>
                          <select name="adult" id="adult" id="adults" class="form-control">
                            <option value="">Number of Adults</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4+</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="children">어린이</label>
                        <div class="form-field">
                          <i class="icon icon-chevron-down"></i>
                          <select name="child" id="child" class="form-control">
                            <option value="">Number of Children</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4+</option>
                          </select>
                        </div>

                      </div>
                    </div>
                  </div>
                  <div style="text-align: center;" class="form-group">
                    <input type="submit" class="btn btn-primary" value="예약하기">
                  </div>
                </form>
              </div>
              <div class="col-md-4">
                <h2 class="mt0">후기</h2>
                <p>여러분의 호텔 문라이트의 경험은 어떠셨나요?<br>여러분의 경험을 다른 분들과 공유해 주세요.<br>그리고 다른 사람의 경험을 받아보세요.</p>
                <p><a href="/question/questionListWrite" class="btn btn-primary" role="button">글 작성하기</a></p>
              </div>
            </div>
          </div>
        </section>

        <script src="/resources/js/scripts.min.js"></script>
        <script src="/resources/js/main.min.js"></script>
        <script src="/resources/js/custom.js"></script>

    </body>

    </html>