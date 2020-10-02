<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>공지사항 :: 당근나라</title>
        <link rel="stylesheet" href="../css/common.css" />
        <script src="../javascript/common.js" defer></script>
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
        <!-- 메뉴 고정바 -->
        <header class="header">
            <div class="header__fixed-bar">
                <section class="header__fixed-bar-logo section-logo">
                    <a href="../main/main.html">
                        <img
                            src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FSQxEt%2FbtqJs5kkQnP%2FhvX1kh8aeqli9J93tF5qV1%2Ftfile.svg"
                            alt="당근나라"
                        />
                    </a>
                </section>
                <section class="header__fixed-bar-search section-search">
                    <div
                        class="header__fixed-bar-search-container"
                        tabindex="4"
                    >
                        <input
                            class="search-input"
                            type="text"
                            placeholder="동네 이름, 물품명 등을 검색해보세요!"
                        />
                        <input
                            type="image"
                            class="search-icon"
                            src="https://img.icons8.com/ios-glyphs/30/000000/search.png"
                        />
                    </div>
                </section>
                <section class="header__fixed-bar-nav section-nav">
                    <nav class="header__fixed-bar-nav-container">
                        <ul class="header__fixed-bar-nav-list nav-list">
                            <li class="nav-list-content">
                                <a href="../member/join.html">회원가입</a>
                            </li>
                            <li class="nav-list-content">
                                <a href="../member/login.html">로그인</a>
                            </li>
                            <li class="nav-list-content">
                                <a href="#">지도로 보기</a>
                            </li>
                        </ul>
                    </nav>
                </section>
            </div>
        </header>
        <!-- 메뉴 목록 리스트 -->
        <aside class="fixed__list">
            <ul>
                <li><a href="noticeBoard.html">공지사항</a></li>
                <li><a href="blackListBoard.html">검거완료 !</a></li>
                <li><a href="badReviewBoard.html">불량거래 후기</a></li>
                <li><a href="#">판매중 이에요.</a></li>
                <li><a href="#">나눔중 이에요.</a></li>
                <li><a href="../board/toBuyBoard.html">구매합니다 ~!</a></li>
            </ul>
        </aside>
        <!-- 섹션 시작 -->
        <section class="section">
            <div class="notice">
                <div class="notice__head-container">
                    <div class="notice__sort">
                        <select
                            class="notice__category"
                            name="notice__category"
                        >
                            <option value="all" selected>전체</option>
                            <option value="digital">최신글</option>
                            <option value="furniture">조회수</option>
                        </select>
                    </div>
                    <div class="notice__head">
                        <h1 class="notice__title">공지사항</h1>
                        <p class="notice__sub">
                            <strong class="notice__total-head">전체 글</strong>
                            <!-- 불러오는 게시글 갯수불러오기 -->
                            <span class="notice__count">30</span>
                        </p>
                        <a href="#none"
                            ><div class="notice__write">글작성</div></a
                        >
                    </div>
                </div>
                <!-- 태그 안에 있는 더미 데이터들은 틀을 보기 위함이며 실제 작업시엔 해당 데이터를 불러 올 수 있도록 변경 부탁드립니다. -->
                <ul class="notice__content">
                    <!-- 링크수정하기 -->
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <!-- 게시글 제목불러오기 -->
                                    <h1>2020년 추석 연휴 택배 중단 안내</h1>
                                    <!-- 게시글 내용 불러오기 -->
                                    <div class="summary">
                                        택배 거래시 아래의 추석 연휴 택배사 일정
                                        참고하셔서 안전한 중고거래 부탁드립니다.
                                        감사합니다.
                                    </div>
                                    <div class="board__content--detail">
                                        <!-- 실제 게시글에 등록된 날짜, 조회수로 변경 -->
                                        <span
                                            >2020.09.23
                                            <div class="vertical"></div>
                                            조회수 607
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <!-- 해당 게시글의 썸네일을 불러올 수 있도록 하기 -->
                                    <img
                                        class="thumbnail"
                                        src="https://www.clody.kr/web/upload/NNEditor/20170928/1ECB694EC849DEBB0B0EC86A1EC9DBCECA095.jpg"
                                        alt="img-thumbnail"
                                    />
                                </div>
                            </article>
                        </li>
                    </a>
                    <!-- 삭제 더미데이터 -->
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <h1>
                                        [당근나라X경찰청] 경찰청에서 알려주는
                                        추석연휴 사기예방법!
                                    </h1>
                                    <div class="summary">
                                        사이버 사기 예방수칙 기억하여 사이버
                                        범죄로부터 안전한 명절 보내세요 ~!
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.09.18
                                            <div class="vertical"></div>
                                            조회수 180
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsvjoI%2FbtqJw9Gf6kc%2FL3ZhYlA0hP0A5QRHr0gYZ0%2Fimg.jpg"
                                        alt="img-thumbnail"
                                    />
                                </div>
                            </article>
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <h1>추석 기간 기차표 거래 단속안내</h1>
                                    <div class="summary">
                                        안녕하세요. 당근나라입니다. 2020년도
                                        추석이 한달이 채 남지 않았습니다.
                                        당근나라 회원님들께서 명절 기차 암표로
                                        인해 피해를 예방하기 위해서 모니터링이
                                        진행되고 있습니다. 기차암표 거래는
                                        불법이라는 사실을 인지해 주시고 아래의
                                        기간동안 당근나라 내 등록되는 추석 연휴
                                        기차표에 대해서는 거래 금지 품목으로
                                        지정하오니 참고 바랍니다. 기간 :
                                        2020.09.08 ~ 2020.10.04 대상 :
                                        추석연휴내(9/29~10/4)에 거래되는 모든
                                        기차표 클린한 당근나라가 될 수 있도록
                                        회원들의 많은 협조 부탁드립니다.
                                        감사합니다.
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.09.5
                                            <div class="vertical"></div>
                                            조회수 501
                                        </span>
                                    </div>
                                </div>
                            </article>
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <h1>
                                        즐거운 휴가, 간단한 원칙만 지키면 더
                                        즐거워집니다.
                                    </h1>
                                    <div class="summary">
                                        즐겁고 행복한 휴가를 위해 거래전 한번더
                                        살펴보세요. 휴가철 인터넷사기! 간단한
                                        원칙만 지키면 충분히 예방 할 수
                                        있습니다.
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.06.11
                                            <div class="vertical"></div>
                                            조회수 305
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fb2PdXw%2FbtqJzsE5EbK%2Fz5Xoe5CjwrT6k3FzuiuPi0%2Fimg.jpg"
                                        alt="img-thumbnail"
                                    />
                                </div>
                            </article>
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <h1>
                                        모두가 기다리던 서비스! 중고용품
                                        방문매입 서비스 정식 오픈 !
                                    </h1>
                                    <div class="summary">
                                        중고용품들 편하게 팔고 싶으셨죠? 직접
                                        찾아가서 한번에 사드립니다 !
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.04.10
                                            <div class="vertical"></div>
                                            조회수 435
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcZsQXH%2FbtqJzskMD0f%2FMqtXmkYnjt4RzJ2TKJsCR0%2Fimg.png"
                                        alt="img-thumbnail"
                                    />
                                </div>
                            </article>
                        </li>
                    </a>
                    <!-- 더미데이터 -->
                </ul>
                <div class="notice__page-num-container">
                    <ul class="page-num-container">
                        <a href="#">
                            <li
                                class="page-num-container__left-btn page-num-container__btn"
                            >
                                <i class="fas fa-chevron-left"></i>
                            </li>
                        </a>
                        <a href="#">
                            <li class="page-num-container__num">1</li>
                        </a>
                        <!-- 더미데이터 -->
                        <a href="#">
                            <li class="page-num-container__num">2</li>
                        </a>
                        <a href="#">
                            <li class="page-num-container__num">3</li>
                        </a>
                        <a href="#">
                            <li class="page-num-container__num">4</li>
                        </a>
                        <a href="#">
                            <li class="page-num-container__num">5</li>
                        </a>
                        <!-- 더미데이터 -->
                        <a href="#">
                            <li
                                class="page-num__right-btn page-num-container__btn"
                            >
                                <i class="fas fa-chevron-right"></i>
                            </li>
                        </a>
                    </ul>
                </div>
            </div>
        </section>
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
