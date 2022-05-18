<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
      <!DOCTYPE HTML>
      <html>

      <head>
         <meta charset="utf-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <title>${question.listTitle }</title>

         <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">

         <!-- Theme style  -->
         <link rel="stylesheet" href="/resources/css/style.css">

         <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <meta name="description" content="Free Bootstrap Theme by uicookies.com">
         <meta name="keywords"
            content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

         <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
            rel="stylesheet">
         <link rel="stylesheet" href="/resources/css/styles-merged.css">
         <link rel="stylesheet" href="/resources/css/style.min.css">
         <link rel="stylesheet" href="/resources/css/table.css">
         <link rel="stylesheet" href="/resources/css/img.css">

         <script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
         <script type="text/javascript" src="/resources/js/custom/question.js"></script>
         <script type="text/javascript">

            // 댓글 수정
            function updateReply(replyNum) {
               var tr = document.getElementById("updateReply" + replyNum);
               var updateReplyContent = document.getElementById("updateReplyContent" + replyNum).innerHTML;

               var str = "";
               str += "<form action='/question/updateReply' method='post'>";
               str += "	<textarea class='form-control' name='replyContent' id='exampleFormControlTextarea1' rows='4' style='resize: none;width: 700px;'>";
               str += updateReplyContent;
               str += "</textarea>";
               str += "	<div align='right'>";
               str += "		<input type='submit' value='댓글 수정' class='btn btn-primary'>";
               str += "	</div>";
               str += "	<input type='hidden' name='replyNum' value='" + replyNum + "'>";
               str += "	<input type='hidden' name='listNum' value='" + ${ question.listNum } + "'>";
               str += "</form>";

               tr.innerHTML = str;
            }

         </script>

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
                                 <p><img src="/resources/img/curve_white.svg" class="seperator probootstrap-animate"
                                       alt="Free HTML5 Bootstrap Template"></p>
                                 <h1 class="probootstrap-heading probootstrap-animate">후기</h1>
                                 <div class="probootstrap-animate probootstrap-sub-wrap">Far far away, behind the word
                                    mountains, far from the countries Vokalia and Consonantia, there live the blind
                                    texts.</div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
               </ul>
            </section>

            <br><br>
            <div class="gtco-section">
               <div class="gtco-container">
                  <div class="container">
                     <div class="row">
                        <div class="col-me-12">
                           <table class="table-bordered" border="1">
                              <tbody>
                                 <tr>
                                    <th width="80" style="text-align: center;">title</th>
                                    <td width="300" height="50">${question.listTitle }</td>
                                    <th width="100" style="text-align: center;">date</th>
                                    <td width="140" style="text-align: center;">${question.listDate }</td>
                                    <th width="100" style="text-align: center;">writer</th>
                                    <td width="100" style="text-align: center;">${question.memberNm }</td>
                                 </tr>
                                 <tr>
                                    <td colspan="6" height="370" style="vertical-align: top; text-align: left;">

                                       <c:if test="${not empty question.savedFilename }">
                                          <div style="text-align: center;">
                                             <img src="/uploadImg/${question.savedFilename }">
                                          </div>
                                       </c:if>
                                       <br>
                                       ${question.listContent }
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  <br>

                  <c:if test="${not empty memberId }">
                     <div style="margin:auto; width:1000px;">
                        <table class="table table-bordered" style="width: 1000px">
                           <c:forEach items="${replyList }" var="reply">
                              <tr>
                                 <th>${reply.memberNm }</th>

                                 <td id="updateReply${reply.replyNum }">
                                    <span id="updateReplyContent${reply.replyNum }">${reply.replyContent }</span>
                                 </td>

                                 <td align="right">
                                    <span>
                                       ${reply.replyDate }
                                       <c:if test="${reply.memberId == sessionScope.memberId}">
                                          <input type="button" value="삭제" class="btn btn-primary"
                                             onclick="deleteReply(${reply.replyNum},${question.listNum });">
                                          <input type="button" value="수정" class="btn btn-primary" id="updateReply"
                                             onclick="updateReply(${reply.replyNum});">
                                       </c:if>
                                    </span>
                                 </td>
                              </tr>
                           </c:forEach>
                           <tr>
                              <td colspan="3">
                                 <form action="/question/replyWrite" method="post" onsubmit="return replyFormCheck();">
                                    <br>
                                    <div class="mb-3">
                                       <textarea class="form-control" id="replyContent" name="replyContent" rows="4"
                                          style="resize: none;width: 1000px;"></textarea>
                                    </div>
                                    <div align="right">
                                       <br>
                                       <button type="submit" class="btn btn-primary">댓글 등록</button>
                                    </div>
                                    <input type="hidden" name="listNum" value="${question.listNum}">
                                 </form>
                              </td>
                           </tr>
                        </table>
                     </div>
                  </c:if>

                  <div style="text-align: center;">
                     <c:if test="${question.memberId == sessionScope.memberId}">
                        <input type="button" value="수정" class="btn btn-primary"
                           onclick="location.href = '/question/updateQuestion?listNum=${question.listNum }'">
                        <input type="button" value="삭제" class="btn btn-primary"
                           onclick="deleteQuestion(${question.listNum });">
                     </c:if>
                     <input type="button" value="리스트" class="btn btn-primary" onclick="location.href='questionList'">
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
                     <small>&copy; 2017 <a href="https://uicookies.com/" target="_blank">uiCookies:Atlantis</a>. All
                        Rights Reserved. <br> Designed &amp; Developed by <a href="https://uicookies.com/"
                           target="_blank">uicookies.com</a> Demo Images: Unsplash.com &amp; Pexels.com</small>
                  </p>

               </div>
            </div>
            </div>
            </footer>

            <script src="/resources/js/jquery.min.js"></script>
            <script src="/resources/js/main.js"></script>
            <script src="/resources/js/scripts.min.js"></script>
            <script src="/resources/js/main.min.js"></script>
      </body>

      </html>