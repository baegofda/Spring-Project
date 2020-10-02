<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>물품검색 :: 당근나라</title>
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
                    <!-- 검색시 검색창 밑에 뜨는 키워드 추천란 입니다 -->
                    <div class="search-keyword">
                        <span class="keyword-title">추천</span>
                        <span class="keyword-contnet">
                            <a href="#none">분당 유모차</a>
                            <a href="#none">키즈카페</a>
                            <a href="#none">화분</a>
                            <a href="#none">강남 명품가방</a>
                            <a href="#none">잠실 냉장고</a>
                            <a href="#none">인천 마우스</a>
                        </span>
                    </div>
                    <!-- 5~6개 정도 표시해주면 될듯합니다 -->
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
                <li><a href="toSaleBoard.html">판매중 이에요.</a></li>
                <li><a href="toSharingBoard.html">나눔중 이에요.</a></li>
                <li><a href="toBuyBoard.html">구매합니다 ~!</a></li>
            </ul>
        </aside>
        <!-- 섹션 시작 -->
        <div class="search-list">
            <!-- 판매게시판 시작 -->
            <div class="search-list__article-container">
                <div class="search-list__head-container">
                    <div class="search-list__head">
                        <h1 class="search-list__title">판매중</h1>
                        <p class="search-list__sub">
                            <strong class="search-list__total-head"
                                >전체 글</strong
                            >
                            <!-- 불러오는 게시글 갯수불러오기 -->
                            <span class="search-list__count">120</span>
                        </p>
                        <!-- 해당 섹션 게시판으로 이동 -->
                        <a href="#none"
                            ><div class="search-list__link">
                                자세히보기 <i class="fas fa-carrot"></i></div
                        ></a>
                    </div>
                </div>
                <!-- 각 섹션 게시판별 최신글 6개만 띄어주시면 됩니다 -->
                <div class="search-list__content">
                    <!-- 태그 안에 있는 더미 데이터들은 틀을 보기 위함이며 실제 작업시엔 해당 데이터를 불러 올 수 있도록 변경 부탁드립니다. -->
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/3c06cb158997b8cd4061052c6b457887e4c60496704b6149d4197a6d791ad261.webp?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    5단 서랍장 입니다
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.26
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 30
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                        15,000원
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        4
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <!-- 이 아래부턴 삭제 부탁드립니다. -->
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/74ead2897bfdc979dfdc817ea9c966c5dfd876d7479410549c8ceefc29271ebf.webp?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    스위스크로스 캠핑체어 팝니다.
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.25
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 30
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                        20,000원
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        1
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/e109941c1a68f4bef813c0a46f20ab1060b67f92c7510a14c83cdb76ef77ba1d.webp?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    6단 미니벨로 자전거 짐받이, 싸게팔아요
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.22
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 142
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                        60,000원
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        25
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/37A0EB6D41B2F67BB10F2FA7AA4DC5CE1104E19B36E4883482C40DF92289656C.jpg?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    셀린느 빈티지
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.20
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 204
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                        120,000원
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        6
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/79657119BD11000C91D4BC2CF3836CBB9C4BC992E925A0114AC02BBAE644F808.jpg?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    아이폰 11 퍼플 128기가 의무통화 후 정상기기
                                    해지
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.20
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 336
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                        777,000원
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        10
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/36612051222EE5EDAE877748EB5945CA67EB64059C4AB793CBFE86CCEA5ED042.jpg?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    레이스 커튼 핀형 새거
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.18
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 307
                                    </div>
                                </div>
                                <div class="search-list__content--text__price">
                                    <div class="search-list__content--price">
                                        18,000원
                                    </div>
                                    <div class="search-list__content--picks">
                                        <img
                                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
                                            alt="picks"
                                        />
                                        8
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <!-- 삭제더미데이터 -->
                </div>
            </div>
            <!-- 나눔게시판 시작 -->
            <div class="search-list__article-container">
                <div class="search-list__head-container">
                    <div class="search-list__head">
                        <h1 class="search-list__title">나눔중</h1>
                        <p class="search-list__sub">
                            <strong class="search-list__total-head"
                                >전체 글</strong
                            >
                            <!-- 불러오는 게시글 갯수불러오기 -->
                            <span class="search-list__count">80</span>
                        </p>
                        <!-- 해당 섹션 게시판으로 이동 -->
                        <a href="#none"
                            ><div class="search-list__link">
                                자세히보기 <i class="fas fa-carrot"></i></div
                        ></a>
                    </div>
                </div>
                <div class="search-list__content">
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/3c06cb158997b8cd4061052c6b457887e4c60496704b6149d4197a6d791ad261.webp?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    5단 서랍장 입니다
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.26
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 30
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
                                        4
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <!-- 이 아래부턴 삭제 부탁드립니다. -->
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/74ead2897bfdc979dfdc817ea9c966c5dfd876d7479410549c8ceefc29271ebf.webp?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    스위스크로스 캠핑체어 팝니다.
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.25
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 30
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
                                        1
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/e109941c1a68f4bef813c0a46f20ab1060b67f92c7510a14c83cdb76ef77ba1d.webp?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    6단 미니벨로 자전거 짐받이, 싸게팔아요
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.22
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 142
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
                                        25
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/37A0EB6D41B2F67BB10F2FA7AA4DC5CE1104E19B36E4883482C40DF92289656C.jpg?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    셀린느 빈티지
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.20
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 204
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
                                        6
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/79657119BD11000C91D4BC2CF3836CBB9C4BC992E925A0114AC02BBAE644F808.jpg?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    아이폰 11 퍼플 128기가 의무통화 후 정상기기
                                    해지
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.20
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 336
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
                                        10
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <article class="search-list__article">
                        <a href="#none">
                            <div class="search-list__content--thumbnail">
                                <img
                                    src="https://dnvefa72aowie.cloudfront.net/origin/article/202009/36612051222EE5EDAE877748EB5945CA67EB64059C4AB793CBFE86CCEA5ED042.jpg?q=82&s=300x300&t=crop"
                                    alt="thumbnail"
                                />
                            </div>
                            <div class="search-list__content--text">
                                <h1 class="search-list__content--text__title">
                                    레이스 커튼 핀형 새거
                                </h1>
                                <p class="search-list__content--text__address">
                                    서울 송파구 석촌동
                                </p>
                                <div class="search-list__content--text__date">
                                    <div class="search-list__content--date">
                                        2020.09.18
                                    </div>
                                    <div class="search-list__content--hit">
                                        조회수 307
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
                                        8
                                    </div>
                                </div>
                            </div>
                        </a>
                    </article>
                    <!-- 삭제더미데이터 -->
                </div>
            </div>
            <!-- 구매게시판 시작 -->
            <div class="search-list__article-container">
                <div class="search-list__head-container">
                    <div class="search-list__head">
                        <h1 class="search-list__title">구매중</h1>
                        <p class="search-list__sub">
                            <strong class="search-list__total-head"
                                >전체 글</strong
                            >
                            <!-- 불러오는 게시글 갯수불러오기 -->
                            <span class="search-list__count">30</span>
                        </p>
                        <!-- 해당 섹션 게시판으로 이동 -->
                        <a href="toBuyBoard.html"
                            ><div class="search-list__link">
                                자세히보기 <i class="fas fa-carrot"></i></div
                        ></a>
                    </div>
                </div>
                <!-- 구매게시판은 최신글기준으로 3개정도만 -->
                <div class="search-list__content">
                    <ul class="to-buy__content">
                        <!-- 링크수정하기 -->
                        <a href="#">
                            <li>
                                <article class="board__content">
                                    <div class="board__content--text">
                                        <!-- 게시글 제목불러오기 -->
                                        <h1>아이패드 구매합니다.</h1>
                                        <!-- 게시글 내용 불러오기 -->
                                        <div class="summary">
                                            Lorem, ipsum dolor sit amet
                                            consectetur adipisicing elit. Odio
                                            error, deleniti optio assumenda
                                            voluptatum doloremque? Laborum
                                            explicabo distinctio voluptatum
                                            soluta placeat corporis iste? Eum ut
                                            obcaecati, culpa dicta expedita
                                            accusantium! Lorem, ipsum dolor sit
                                            amet consectetur adipisicing elit.
                                            Odio error, deleniti optio assumenda
                                            voluptatum doloremque? Laborum
                                            explicabo distinctio voluptatum
                                            soluta placeat corporis iste? Eum ut
                                            obcaecati, culpa dicta expedita
                                            accusantium!
                                        </div>
                                        <div class="board__content--detail">
                                            <!-- 실제 게시글에 등록된 주소, 카테고리, 날짜로 변경 -->
                                            <span
                                                >경기도 평택시 서정동
                                                <div class="vertical"></div>
                                                디지털/가전
                                                <div class="vertical"></div>
                                                2020.09.23
                                                <div class="vertical"></div>
                                                조회수 486
                                            </span>
                                        </div>
                                    </div>
                                    <div class="board__content--thumbnail">
                                        <!-- 해당 게시글의 썸네일을 불러올 수 있도록 하기 -->
                                        <img
                                            class="thumbnail"
                                            src="https://dnvefa72aowie.cloudfront.net/origin/article/202008/881bb464c1c1ed69f59df65d9e25b56d2714b920f81c8e72512664e503b43902.webp?q=95&s=1440x1440&t=inside"
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
                                        <h1>아이패드 구매합니다.</h1>
                                        <div class="summary">
                                            Lorem, ipsum dolor sit amet
                                            consectetur adipisicing elit. Odio
                                            error, deleniti optio assumenda
                                            voluptatum doloremque? Laborum
                                            explicabo distinctio voluptatum
                                            soluta placeat corporis iste? Eum ut
                                            obcaecati, culpa dicta expedita
                                            accusantium! Lorem, ipsum dolor sit
                                            amet consectetur adipisicing elit.
                                            Odio error, deleniti optio assumenda
                                            voluptatum doloremque? Laborum
                                            explicabo distinctio voluptatum
                                            soluta placeat corporis iste? Eum ut
                                            obcaecati, culpa dicta expedita
                                            accusantium!
                                        </div>
                                        <div class="board__content--detail">
                                            <span
                                                >경기도 평택시 서정동
                                                <div class="vertical"></div>
                                                디지털/가전
                                                <div class="vertical"></div>
                                                2020.09.23
                                                <div class="vertical"></div>
                                                조회수 265
                                            </span>
                                        </div>
                                    </div>
                                    <div class="board__content--thumbnail">
                                        <img
                                            class="thumbnail"
                                            src="https://dnvefa72aowie.cloudfront.net/origin/article/202008/881bb464c1c1ed69f59df65d9e25b56d2714b920f81c8e72512664e503b43902.webp?q=95&s=1440x1440&t=inside"
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
                                        <h1>아이패드 구매합니다.</h1>
                                        <div class="summary">
                                            Lorem, ipsum dolor sit amet
                                            consectetur adipisicing elit. Odio
                                            error, deleniti optio assumenda
                                            voluptatum doloremque? Laborum
                                            explicabo distinctio voluptatum
                                            soluta placeat corporis iste? Eum ut
                                            obcaecati, culpa dicta expedita
                                            accusantium! Lorem, ipsum dolor sit
                                            amet consectetur adipisicing elit.
                                            Odio error, deleniti optio assumenda
                                            voluptatum doloremque? Laborum
                                            explicabo distinctio voluptatum
                                            soluta placeat corporis iste? Eum ut
                                            obcaecati, culpa dicta expedita
                                            accusantium!
                                        </div>
                                        <div class="board__content--detail">
                                            <span
                                                >경기도 평택시 서정동
                                                <div class="vertical"></div>
                                                디지털/가전
                                                <div class="vertical"></div>
                                                2020.09.23
                                                <div class="vertical"></div>
                                                조회수 123
                                            </span>
                                        </div>
                                    </div>
                                    <div class="board__content--thumbnail">
                                        <img
                                            class="thumbnail"
                                            src="https://dnvefa72aowie.cloudfront.net/origin/article/202008/881bb464c1c1ed69f59df65d9e25b56d2714b920f81c8e72512664e503b43902.webp?q=95&s=1440x1440&t=inside"
                                            alt="img-thumbnail"
                                        />
                                    </div>
                                </article>
                            </li>
                        </a>
                        <!-- 더미데이터 -->
                    </ul>
                    <!-- 이 아래부턴 삭제 부탁드립니다. -->

                    <!-- 삭제더미데이터 -->
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
