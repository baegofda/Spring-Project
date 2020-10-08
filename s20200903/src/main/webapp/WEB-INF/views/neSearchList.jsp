<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>물품검색 :: 당근나라</title>
        <link href="css/common.css" rel="stylesheet">
		<script src="javascript/common.js" defer ></script>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script
            src="https://kit.fontawesome.com/797af710b1.js"
            crossorigin="anonymous"
            defer
        ></script>
        <script
            src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
            defer
        ></script>
        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcz9VUi%2FbtqJt0b2VUe%2FiiBIEnDkufPInk4hKsunE1%2Fimg.png"
        />
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap"
            rel="stylesheet"
        />
    </head>

    <body>
       
        <!-- 섹션 시작 -->
        <div class="search-list">
            <!-- 판매게시판 시작 -->
            <div class="search-list__article-container">
                <div class="search-list__head-container">
                    <div class="search-list__head">
                        <h1 class="search-list__title">판매중</h1>
                        <p class="search-list__sub">
                        </p>
                        <!-- 해당 섹션 게시판으로 이동 -->
                        <a href="SearchSaleList.do?sword=${sword }"
                            ><div class="search-list__link">
                                자세히보기 <i class="fas fa-carrot"></i></div
                        ></a>
                    </div>
                </div>
                <!-- 각 섹션 게시판별 최신글 6개만 띄어주시면 됩니다 -->
                <div class="search-list__content">
                    <!-- 태그 안에 있는 더미 데이터들은 틀을 보기 위함이며 실제 작업시엔 해당 데이터를 불러 올 수 있도록 변경 부탁드립니다. -->
                <c:forEach var="list" items="${saSList }">
                  <c:choose>
                  <c:when test="${list.rn < 7 }">
                    <article class="search-list__article">
                        <a href="SearchSaleList.do?sword=${sword }"> 
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="/image/${list.pimg1}"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    ${list.ptitle}
                                </h1>
                                <p class="search-list__content--text__address">
                                    ${list.maddr}
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        ${list.pdate}
                                    </div>
                                    <div class="search-list__content--hit">
                                         	조회수 ${list.phit}
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                         ${list.pprice}원
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        ${list.ppicks}
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    </c:when>
                  </c:choose>
                </c:forEach>
                </div>
            </div>
            
            <!-- 나눔게시판 시작 -->
            <div class="search-list__article-container">
                <div class="search-list__head-container">
                    <div class="search-list__head">
                        <h1 class="search-list__title">나눔중</h1>
                        <p class="search-list__sub">
                        </p>
                        <!-- 해당 섹션 게시판으로 이동 -->
                        <a href="SearchShareList.do?sword=${sword }"
       					><div class="search-list__link">
                                자세히보기 <i class="fas fa-carrot"></i></div
                        ></a>
                    </div>
                </div>
                <div class="search-list__content">
                <c:forEach var="list" items="${shSList }">
                 <c:choose>
                  <c:when test="${list.rn < 7 }">
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="/image/${list.pimg1}"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    ${list.ptitle}
                                </h1>
                                <p class="search-list__content--text__address">
                                    ${list.maddr}
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        ${list.pdate}
                                    </div>
                                    <div class="search-list__content--hit">
                                         	조회수 ${list.phit}
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                         	무료나눔
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        ${list.ppicks}
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                   </c:when>
                  </c:choose>    
                </c:forEach>
                </div>
            </div>
            <!-- 구매게시판 시작 -->
            <div class="search-list__article-container">
                <div class="search-list__head-container">
                    <div class="search-list__head">
                        <h1 class="search-list__title">구매중</h1>
                        <p class="search-list__sub"></p>
                        <!-- 해당 섹션 게시판으로 이동 -->
                        <a href="SearchBuyList.do?sword=${sword }"
                            ><div class="search-list__link">
                                자세히보기 <i class="fas fa-carrot"></i></div
                        ></a>
                    </div>
                </div>
                <!-- 구매게시판은 최신글기준으로 3개정도만 -->
                <div class="search-list__content">
                    <ul class="to-buy__content">
                        <!-- 링크수정하기 -->
                    <c:forEach var="list" items="${bSList }">
                      <c:choose>
                  		<c:when test="${list.rn < 5 }">
                        <a href="buyPostDetail.do?pnum=${list.pnum}">
                            <li>
                                <article class="board__content">
                                    <div class="board__content--text">
                                        <!-- 게시글 제목불러오기 -->
                                        <h1>${list.ptitle}</h1>
                                        <!-- 게시글 내용 불러오기 -->
                                        <div class="summary">
                                            ${list.pcontent}
                                        </div>
                                        <div class="board__content--detail">
                                            <!-- 실제 게시글에 등록된 주소, 카테고리, 날짜로 변경 -->
                                            <span
                                                >${list.maddr}
                                                <div class="vertical"></div>
                                                ${list.ctkinds}
                                                <div class="vertical"></div>
                                                ${list.pdate}
                                                <div class="vertical"></div>
                                               	 조회수 ${list.phit}
                                            </span>
                                        </div>
                                    </div>
                                    <div class="board__content--thumbnail">
                                        <!-- 해당 게시글의 썸네일을 불러올 수 있도록 하기 -->
                                        <img
                                            class="thumbnail"
                                            src="/image/${list.pimg1 }"
                                            alt="img-thumbnail"
                                        />
                                    </div>
                                </article>
                            </li>
                        </a>
                      </c:when>
                     </c:choose>
                    </c:forEach>
                    </ul>
                   
                </div>
            </div>
        </div>
        <!-- 홈 버튼 -->
        <div class="scroll-btn"></div>
        <!-- 하단 카피라이트 -->
        <footer class="footer">
            <div class="footer-container">
                <div class="footer-top">
                    <div class="footer-top-logo"></div>
                    <ul class="footer-top-list">
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/trust"
                                >믿을 수 있는 중고거래</a
                            >
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/wv/faqs">
                                자주 묻는 질문</a
                            >
                        </li>
                    </ul>
                    <ul class="footer-top-list">
                        <li class="footer-top-list-content">
                            <a
                                href="https://www.notion.so/3d0197c137ec43d18ff739b5b254a3c8/"
                            >
                                회사 소개
                            </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://ad.daangn.com/"> 광고주센터 </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://town.daangn.com/"> 동네가게 </a>
                        </li>
                    </ul>
                    <ul class="footer-top-list">
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/policy/terms">
                                이용약관
                            </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/policy/privacy">
                                개인정보 취급방침
                            </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/policy/location">
                                위치기반서비스 이용약관
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer-bottom">
                    <div class="footer-bottom-copyright">
                        <ul class="footer-bottom-list-container">
                            <li class="footer-bottom-list-conent">
                                <address>고객문의 cs@daangnservice.com</address>
                                <address>제휴문의 contact@daangn.com</address>
                            </li>
                            <li class="footer-bottom-list-conent">
                                <address>
                                    사업자 등록번호 : 375-87-000-88
                                </address>
                                <address>
                                    서울특별시 구로구 디지털로 30길 28 609호
                                </address>
                            </li>
                            <li class="footer-bottom-list-conent">
                                ©Danggeun Market Inc.
                            </li>
                        </ul>
                    </div>
                    <div class="footer-bottom-sns">
                        <ul class="footer-bottom-sns-container">
                            <li class="sns-icon">
                                <a href="https://www.facebook.com/daangn">
                                    <img
                                        src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-facebook-0563f4a93852d073b41f13b8bcabb03d47af3bb3a6755cdfedd8a73686c7f18c.svg"
                                    />
                                </a>
                            </li>
                            <li class="sns-icon">
                                <a
                                    href="https://www.instagram.com/daangnmarket/"
                                >
                                    <img
                                        src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-instagram-2f6c88a461597907c114b7ce28eab053fcae791ed26417915fefb6f7c9f95756.svg"
                                    />
                                </a>
                            </li>
                            <li class="sns-icon">
                                <a href="https://blog.naver.com/daangn">
                                    <img
                                        src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-blog-e1b0d512d1766a6962ec5bbb5b0803d2a6a9c55ad97db5ba9eebb76013caceba.svg"
                                    />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
