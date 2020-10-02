<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>검거완료 ! :: 당근나라</title>
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
            <div class="black-list">
                <div class="black-list__head-container">
                    <div class="black-list__sort">
                        <select
                            class="black-list__category"
                            name="black-list__category"
                        >
                            <option value="all" selected>전체</option>
                            <option value="digital">최신글</option>
                            <option value="furniture">조회수</option>
                        </select>
                    </div>
                    <div class="black-list__head">
                        <h1 class="black-list__title">블랙리스트</h1>
                        <p class="black-list__sub">
                            <strong class="black-list__total-head"
                                >전체 글</strong
                            >
                            <!-- 불러오는 게시글 갯수불러오기 -->
                            <span class="black-list__count">30</span>
                        </p>
                        <a href="#none"
                            ><div class="black-list__write">글작성</div></a
                        >
                    </div>
                </div>
                <!-- 태그 안에 있는 더미 데이터들은 틀을 보기 위함이며 실제 작업시엔 해당 데이터를 불러 올 수 있도록 변경 부탁드립니다. -->
                <ul class="black-list__content">
                    <!-- 링크수정하기 -->
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <!-- 게시글 제목불러오기 -->
                                    <h1>
                                        당근나라 사기모니터링 현황_9월 4주차
                                    </h1>
                                    <!-- 게시글 내용 불러오기 -->
                                    <div class="summary">
                                        당근나라 사기모니터링 현황_9월 4주차
                                    </div>
                                    <div class="board__content--detail">
                                        <!-- 실제 게시글에 등록된 날짜, 조회수로 변경 -->
                                        <span
                                            >2020.09.26
                                            <div class="vertical"></div>
                                            조회수 690
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <!-- 해당 게시글의 썸네일을 불러올 수 있도록 하기 -->
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQPxGf%2FbtqJsiRI2K7%2FS2jJKSqWue6ZJzPcfH1Gwk%2Fimg.jpg"
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
                                        당근나라 사기모니터링 현황_9월 3주차
                                    </h1>
                                    <div class="summary">
                                        당근나라 사기모니터링 현황_9월 3주차
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.09.19
                                            <div class="vertical"></div>
                                            조회수 188
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQPxGf%2FbtqJsiRI2K7%2FS2jJKSqWue6ZJzPcfH1Gwk%2Fimg.jpg"
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
                                        당근나라 사기모니터링 현황_9월 2주차
                                    </h1>
                                    <div class="summary">
                                        당근나라 사기모니터링 현황_9월 2주차
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.08.25
                                            <div class="vertical"></div>
                                            조회수 559
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQPxGf%2FbtqJsiRI2K7%2FS2jJKSqWue6ZJzPcfH1Gwk%2Fimg.jpg"
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
                                        당근나라 사기모니터링 현황_9월 1주차
                                    </h1>
                                    <div class="summary">
                                        당근나라 사기모니터링 현황_9월 1주차
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.06.16
                                            <div class="vertical"></div>
                                            조회수 384
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQPxGf%2FbtqJsiRI2K7%2FS2jJKSqWue6ZJzPcfH1Gwk%2Fimg.jpg"
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
                                        당근나라 사기모니터링 현황_8월 4주차
                                    </h1>
                                    <div class="summary">
                                        당근나라 사기모니터링 현황_8월 4주차
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.04.18
                                            <div class="vertical"></div>
                                            조회수 482
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQPxGf%2FbtqJsiRI2K7%2FS2jJKSqWue6ZJzPcfH1Gwk%2Fimg.jpg"
                                        alt="img-thumbnail"
                                    />
                                </div>
                            </article>
                        </li>
                    </a>
                    <!-- 더미데이터 -->
                </ul>
                <div class="black-list__page-num-container">
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
