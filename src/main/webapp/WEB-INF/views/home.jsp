<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <!DOCTYPE html>

    <html lang="en">

    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>타이틀을 바꾸겠습니다</title>
      <meta name="description" content="Free Bootstrap Theme by uicookies.com">
      <meta name="keywords"
        content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
      <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
        rel="stylesheet">
      <link rel="stylesheet" href="/resources/css/styles-merged.css">
      <link rel="stylesheet" href="/resources/css/style.min.css">
      <link rel="stylesheet" href="/resources/css/table.css">
      <!-- 구글지도 설정 -->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
      <script type="text/javascript"
        src="http://maps.google.com/maps/api/js?key=AIzaSyAwrSi_2CQj5iHe1Y2ugQaatG3kvueyXDE"></script>
      <style>
        #map_ma {
          width: 100%;
          height: 400px;
          clear: both;
          border: solid 1px purple;
        }
      </style>
    </head>

    <body>
      <%@ include file="/WEB-INF/views/menuBar/homeMenuBar.jsp" %>

        <section class="probootstrap-slider flexslider">
          <ul class="slides">
            <li style="background-image: url('/resources/img/ocean3.png');" class="overlay">
              <div class="container">
                <div class="row">
                  <div class="col-md-10 col-md-offset-1">
                    <div class="probootstrap-slider-text text-center">
                      <p><img src="/resources/img/curve_white.svg" class="seperator probootstrap-animate"
                          alt="Free HTML5 Bootstrap Template"></p>
                      <h1 class="probootstrap-heading probootstrap-animate">Welcome to MoonLight</h1>
                      <div class="probootstrap-animate probootstrap-sub-wrap">하늘에는 보다 가깝게 바다에는 더욱 드넓게 펼쳐진 객실 오션뷰</div>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            <li style="background-image: url('/resources/img/ocean2.jpg');" class="overlay">
              <div class="container">
                <div class="row">
                  <div class="col-md-10 col-md-offset-1">
                    <div class="probootstrap-slider-text text-center">
                      <p><img src="/resources/img/curve_white.svg" class="seperator probootstrap-animate"
                          alt="Free HTML5 Bootstrap Template"></p>
                      <h1 class="probootstrap-heading probootstrap-animate">Enjoy Luxury Experience</h1>
                      <div class="probootstrap-animate probootstrap-sub-wrap">보는 순간 힐링되는 영롱한 은하수에서<br>밤하늘을 수놓은 듯 화려하게
                        빛나는 별빛 은하수를 온 몸으로 담아보세요</div>
                    </div>
                  </div>
                </div>
              </div>

            </li>
          </ul>
        </section>

        <section class="probootstrap-cta probootstrap-light">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <h2 class="probootstrap-cta-heading">가족과 함께 예약하세요 <span> &mdash; 여러분들과 함께 하겠습니다</span></h2>
                <div class="probootstrap-cta-button-wrap"><a href="/booking/booking" class="btn btn-primary">예약하기</a>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="probootstrap-section">
          <div class="container">
            <div class="row mb30">
              <div class="col-md-8 col-md-offset-2 probootstrap-section-heading text-center">
                <h2>Services</h2>
                <p class="lead">THE MoonLight에서 준비한 특별한 상품을 만나보세요.</p>
                <p><img src="/resources/img/curve.svg" class="svg" alt="Free HTML5 Bootstrap Template"></p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="service left-icon probootstrap-animate">
                  <div class="icon">
                    <img src="/resources/img/flaticon/svg/001-building.svg" class="svg"
                      alt="Free HTML5 Bootstrap Template by uicookies.com">
                  </div>
                  <div class="text">
                    <h3>Hotel Rooms</h3>
                    <p>넓고 현대적인 공간 구성이 특징인 203개의 객실은 다양한 크기와 모양의 창문에서 쏟아져 들어오는 따스한 자연 채광을 자랑합니다. 각 객실마다 40인치 평면 TV, 푹신한
                      침구, 베개 타입 선택 옵션, 무료 초고속 와이파이가 마련되어 있습니다</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="service left-icon probootstrap-animate">
                  <div class="icon">
                    <img src="/resources/img/flaticon/svg/003-restaurant.svg" class="svg"
                      alt="Free HTML5 Bootstrap Template by uicookies.com">
                  </div>
                  <div class="text">
                    <h3>Food &amp; Drinks</h3>
                    <p>매혹적인 야경을 배경으로 총주방장의 독창적인 코스 요리를 즐길 수 있는 라 플레이스 그릴&바, 세련된 인테리어의 디오니소스 카페&바, 제철 로컬 식재료를 활용한 뷔페와 일품
                      메뉴를 선보이고 있는 모래시계 레스토랑이 풍부한 미식의 세계로 인도합니다</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="service left-icon probootstrap-animate">
                  <div class="icon">
                    <img src="/resources/img/flaticon/svg/004-parking.svg" class="svg"
                      alt="Free HTML5 Bootstrap Template by uicookies.com">
                  </div>
                  <div class="text">
                    <h3>Airport Taxi</h3>
                    <p>THE MoonLight는 광주공항, 광주송정 KTX역, 고속버스터미널, 지하철역 등의 주요 교통 요지에 매우 밀접하게 자리해 지역 관광 명소뿐만 아니라 근교 관광 도시
                      방문에 매우 편리합니다. 또한 비즈니스와 여가 모두에 적합한 광주 유일의 인터내셔널 브랜드 호텔입니다</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section class="probootstrap-section probootstrap-section-dark">
          <div class="container">
            <div class="row mb30">
              <div class="col-md-8 col-md-offset-2 probootstrap-section-heading text-center">
                <h2>엄선된 최고의 방들</h2><br>
                <p class="lead">저희 문라이트 에서는 여러분들에게 최고의 품질로만 엄선된 호텔입니다.</p> <br>
                <p class="lead">여러분들의 추억과 함께 하겠습니다</p>
                <p><img src="/resources/img/curve.svg" class="svg" alt="Free HTML5 Bootstrap Template"></p>
              </div>
            </div>
            <div class="row probootstrap-gutter10">
              <div class="col-md-6">
                <div class="probootstrap-block-image-text">
                  <figure>
                    <img src="/resources/img/room/roomClassic.jpg" alt="Free HTML5 Bootstrap Template by uicookies.com"
                      class="img-responsive">
                  </figure>
                  <div class="text">
                    <h3><a href="/room">Classic</a></h3>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 2인 이상</li>
                      </ul>
                    </div>
                    <p>심플한 인테리어와 아늑한 분위기가 편안함을 더해주는 객실로 여우롭고 기분 좋은 하루를 선사합니다.</p>
                    <p><a href="/booking/booking" class="btn btn-primary">최저 120,000 KRW</a></p>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="probootstrap-block-image-text">
                  <figure>
                    <img src="/resources/img/room/roomUltraSuperior2.jpg"
                      alt="Free HTML5 Bootstrap Template by uicookies.com" class="img-responsive">
                  </figure>
                  <div class="text">
                    <h3><a href="/room">Premier</a></h3>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 2인 이상</li>
                      </ul>
                    </div>
                    <p>모던한 가구와 빈티지 소품들이 잘 어울려진 프리미어 객실로 통유리를 통해 들어오는 햇살로 일상 속 편안함과 여유를 선사합니다.</p>
                    <p><a href="/booking/booking" class="btn btn-primary">최저 250.000 KRW</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section class="probootstrap-section">
          <div class="container">
            <div class="row">
              <div class="col-md-12 probootstrap-relative">
                <h3 class="mt0 mb30">방 소개</h3>
                <ul class="probootstrap-owl-navigation absolute right">
                  <li><a href="#" class="probootstrap-owl-prev"><i class="icon-chevron-thin-left"></i></a></li>
                  <li><a href="#" class="probootstrap-owl-next"><i class="icon-chevron-thin-right"></i></a></li>
                </ul>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 probootstrap-relative">
                <div class="owl-carousel owl-carousel-carousel">
                  <div class="item">
                    <div class="probootstrap-room">
                      <a href="/room"><img src="/resources/img/room/roomClassic.jpg"
                          alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                      <div class="text">
                        <h3>Classic</h3>
                        <br>
                        <p>심플한 인테리어와 아늑한 분위기가 편안함을 더해주는 객실로 여우롭고 기분 좋은 하루를 선사합니다.</p>
                        <div class="post-meta">
                          <ul>
                            <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                            <li><i class="icon-user2"></i> 2인 이상</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="probootstrap-room">
                      <a href="/room"><img src="/resources/img/room/roomGrandDeluxe.jpg"
                          alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                      <div class="text">
                        <h3>Deluxe</h3>
                        <br>
                        <p>이국적인 뷰가 아름다운 그랜드 디럭스 객실은 현대적인 감각을 더한 가구와 소품의 스타일링이 돋보이는 객실입니다.</p>
                        <div class="post-meta">
                          <ul>
                            <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                            <li><i class="icon-user2"></i> 2인 이상</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="probootstrap-room">
                      <a href="/room"><img src="/resources/img/room/roomUltraSuperior.jpg"
                          alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                      <div class="text">
                        <h3>Superior</h3>
                        <br>
                        <p>한층 여유롭고 쾌적한 수페리어 객실은 최상의 안락함과 품격 있는 서비스로 편안함을 제공해드립니다.</p>
                        <div class="post-meta">
                          <ul>
                            <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                            <li><i class="icon-user2"></i> 2인 이상</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="probootstrap-room">
                      <a href="/room"><img src="/resources/img/room/roomUltraSuperior2.jpg"
                          alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                      <div class="text">
                        <h3>Premier</h3>
                        <br>
                        <p>모던한 가구와 빈티지 소품들이 잘 어울려진 프리미어 객실로 통유리를 통해 들어오는 햇살로 일상 속 편안함과 여유를 선사합니다.</p>
                        <div class="post-meta">
                          <ul>
                            <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                            <li><i class="icon-user2"></i> 2인 이상</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="probootstrap-room">
                      <a href="/room"><img src="/resources/img/room/roomGrandDeluxe2.jpg"
                          alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                      <div class="text">
                        <h3>Deluxe Suite</h3>
                        <br>
                        <p>문나이트 호텔의 최고층에 위치한 객실로 클래식하고 기품 있는 분위기를 느끼며 최상의 휴식을 누를 수 있습니다.</p>
                        <div class="post-meta">
                          <ul>
                            <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                            <li><i class="icon-user2"></i> 2인 이상</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="probootstrap-room">
                      <a href="/room"><img src="/resources/img/room/roomPresidential.jpg"
                          alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                      <div class="text">
                        <h3>Family Suite</h3>
                        <br>
                        <p>넒은 객실과 거실, 드래스룸이 분리된 패밀리 공간에서 고품격 라이프 스타일을 즐길 수 있습니다.</p>
                        <div class="post-meta">
                          <ul>
                            <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                            <li><i class="icon-user2"></i> 2인 이상</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="probootstrap-half">
          <div class="image" style="background-image: url('/resources/img/hotel.jpg');"></div>
          <div class="text">
            <div class="probootstrap-animate fadeInUp probootstrap-animated">
              <h2 class="mt0">Best 5 Star hotel</h2>
              <p><img src="/resources/img/curve_white.svg" class="seperator" alt="Free HTML5 Bootstrap Template"></p>
              <div class="row">
                <div class="col-md-6">
                  <p>호텔 문라이트는 광주공항, 광주송정 KTX역, 고속버스터미널, 지하철역 등의 주요 교통 요지에 매우 밀접하게 자리해 지역 관광 명소뿐만 아니라 근교 관광 도시 방문에 매우
                    편리합니다. 또한 광주무역센터 바로 건너편에 위치해 있어 비즈니스와 여가 모두에 적합한 광주 유일의 인터내셔널 브랜드 호텔입니다.

                    호텔 외관을 아름답게 수놓고 있는 조명의 거장 Alian Guilhot의 조명 작품과 로비 가득 전시된 세계적으로 유명한 작가들의 작품이 문화예술의 도시 광주에 오신 여러분을
                    맞이합니다. 동급 호텔 전용 면적 대비 넓고 현대적인 공간 구성이 특징인 203개의 객실은 다양한 크기와 모양의 창문에서 쏟아져 들어오는 따스한 자연 채광을 자랑합니다.
                  </p>
                </div>
                <div class="col-md-6">
                  <p>호남 지역 최고의 럭셔리 스파와 투숙객 전용 실내 수영장, 최신 장비를 완비한 피트니스센터 그리고 사우나는 진정한 도심 속 휴식과 채움의 시간을 제공합니다. 다양한 규모 및
                    행사의 성격에 따라 이용 가능한 7개의 이벤트 공간은 대규모 컨벤션, 중소 규모의 회의, 고품격 웨딩, 프라이빗한 가족모임까지 다목적 행사를 진행하시기에 부족함이 없습니다.

                    매혹적인 광주 야경을 배경으로 총주방장의 독창적인 코스 요리를 즐길 수 있는 라 플레이스 그릴&바, 세련된 인테리어의 디오니소스 카페&바, 제철 로컬 식재료를 활용한 뷔페와 일품
                    메뉴를 선보이고 있는 모래시계 레스토랑이 풍부한 미식의 세계로 인도합니다.</p>
                </div>
              </div>
        </section>

        <!-- 여기 위 아님 -->

        <!-- START: footer -->
        <footer role="contentinfo" class="probootstrap-footer">
          <div class="container">
            <div class="row">
              <div class="col-md-8">
                <div class="probootstrap-footer-widget">
                  <p class="mt40"><img src="/resources/img/hotel_logo.png" class="hires" width="250" height="84"
                      alt="Free HTML5 Bootstrap Template by uicookies.com"></p>
                  <div id="map_ma"></div>

                  <script type="text/javascript">
                    $(document).ready(function () {
                      var myLatlng = new google.maps.LatLng(35.176578, 126.802214); // 위치값 위도 경도
                      var Y_point = 35.16082961907631;      // Y 좌표
                      var X_point = 126.81132085554434;       // X 좌표
                      var zoomLevel = 17;               // 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
                      var markerTitle = "THE MoonLight";  // 현재 위치 마커에 마우스를 오버을때 나타나는 정보
                      var markerMaxWidth = 200;              // 마커를 클릭했을때 나타나는 말풍선의 최대 크기

                      // 말풍선 내용
                      var contentString = '<div>' +
                        '<h2>THE MoonLight</h2>' +
                        '<p></p>' +
                        '</div>';
                      var myLatlng = new google.maps.LatLng(Y_point, X_point);
                      var mapOptions = {
                        zoom: zoomLevel,
                        center: myLatlng,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                      }
                      var map = new google.maps.Map(document.getElementById('map_ma'), mapOptions);
                      var marker = new google.maps.Marker({
                        position: myLatlng,
                        map: map,
                        title: markerTitle
                      });
                      var infowindow = new google.maps.InfoWindow({
                        content: contentString,
                        maxWizzzdth: markerMaxWidth
                      });
                      google.maps.event.addListener(marker, 'click', function () {
                        infowindow.open(map, marker);
                      });
                    });
                  </script>
                </div>
              </div>

              <div class="col-md-4">
                <div class="probootstrap-footer-widget">
                  <br><br>
                  <h3>위치</h3>
                  <ul class="probootstrap-contact-info">
                    <li><i class="icon-location2"></i> <span>광주광역시 광산구 무진대로 282</span></li>
                    <li><i class="icon-mail"></i><span>moonLight@moonLight.com</span></li>
                    <li><i class="icon-phone2"></i><span>+82 062-123-4567</span></li>
                  </ul>
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
                  <small>&copy; 2017 <a href="https://uicookies.com/" target="_blank">uiCookies:Atlantis</a>. All Rights
                    Reserved. <br> Designed &amp; Developed by <a href="https://uicookies.com/"
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

    </body>

    </html>