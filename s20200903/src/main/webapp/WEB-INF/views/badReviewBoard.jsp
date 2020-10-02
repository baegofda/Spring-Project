<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="includeJSP.jsp" %>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>불량거래후기 :: 당근나라</title>
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
        <!-- 섹션 시작 -->
        <section class="section">
            <div class="bad-review">
                <div class="bad-review__head-container">
                    <div class="bad-review__sort">
                        <select
                            class="bad-review__category"
                            name="bad-review__category"
                        >
                            <option value="all" selected>전체</option>
                            <option value="digital">최신글</option>
                            <option value="furniture">조회수</option>
                        </select>
                    </div>
                    <div class="bad-review__head">
                        <h1 class="bad-review__title">불량거래후기</h1>
                        <p class="bad-review__sub">
                            <strong class="bad-review__total-head"
                                >전체 글</strong
                            >
                            <!-- 불러오는 게시글 갯수불러오기 -->
                            <span class="bad-review__count">321</span>
                        </p>
                        <a href="#none"
                            ><div class="bad-review__write">글작성</div></a
                        >
                    </div>
                </div>
                <!-- 태그 안에 있는 더미 데이터들은 틀을 보기 위함이며 실제 작업시엔 해당 데이터를 불러 올 수 있도록 변경 부탁드립니다. -->
                <ul class="bad-review__content">
                    <!-- 링크수정하기 -->
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <!-- 게시글 제목불러오기 -->
                                    <h1>최문영 010 2230 2538 사기꾼</h1>
                                    <!-- 게시글 내용 불러오기 -->
                                    <div class="summary">
                                        01022302538최문영 노트북사기 다른 물건도
                                        많이 올리것 같아요 ​카카오뱅크 3333 03
                                        6943906 본인 인증도 했네요ㅜㅜ
                                    </div>
                                    <div class="board__content--detail">
                                        <!-- 실제 게시글에 등록된 날짜, 조회수, 댓글로 변경 -->
                                        <span
                                            >2020.09.26
                                            <div class="vertical"></div>
                                            조회수 690
                                            <div class="vertical"></div>
                                            댓글
                                            <div
                                                class="board__cotent--reply-count"
                                            >
                                                2
                                            </div>
                                        </span>
                                    </div>
                                </div>
                            </article>
                        </li>
                    </a>
                    <!-- 삭제 더미데이터 -->
                    <a href="#">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <h1>윤보람 사기꾼 조심하세요.</h1>
                                    <div class="summary">
                                        물건산다고 댓글달면 다른번호로 전화나
                                        문자와서 자기물건인것 처럼 판매한다하고
                                        입금 유도합니다. 010-8419-6665
                                        조심하셔요.
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.09.19
                                            <div class="vertical"></div>
                                            조회수 188
                                            <div class="vertical"></div>
                                            댓글
                                            <div
                                                class="board__cotent--reply-count"
                                            >
                                                0
                                            </div>
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbSBcPc%2FbtqJvTqa9Gk%2FlYM6PkM92vMitI0fQUIhQ1%2Fimg.jpg"
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
                                    <h1>고광민 기가바이트 게이밍 노트북사기</h1>
                                    <div class="summary">
                                        고광민 신한은행계좌 01059642458
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.08.25
                                            <div class="vertical"></div>
                                            조회수 559
                                            <div class="vertical"></div>
                                            댓글
                                            <div
                                                class="board__cotent--reply-count"
                                            >
                                                2
                                            </div>
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
                                    <h1>010 4671 1598 황태선</h1>
                                    <div class="summary">
                                        계좌랑 번호를 자꾸 바꿔서 더치트
                                        피하는데 이름 검색해보면 피해사례 여럿
                                        나옴 ​ 이번에도 더치트 등록하자마자
                                        중고나라 글 전부 삭제하고 사라짐
                                    </div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.06.16
                                            <div class="vertical"></div>
                                            조회수 384
                                            <div class="vertical"></div>
                                            댓글
                                            <div
                                                class="board__cotent--reply-count"
                                            >
                                                5
                                            </div>
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
                                        아이패드 에어3 wifi 256gb.
                                        카톡사기.gyi458
                                    </h1>
                                    <div class="summary">나쁜놈이네 이거</div>
                                    <div class="board__content--detail">
                                        <span
                                            >2020.04.18
                                            <div class="vertical"></div>
                                            조회수 482
                                            <div class="vertical"></div>
                                            댓글
                                            <div
                                                class="board__cotent--reply-count"
                                            >
                                                8
                                            </div>
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <img
                                        class="thumbnail"
                                        src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FDFgIC%2FbtqJvTXZ7Ky%2FQQlQRKDdNSaK3WI6FByWj1%2Fimg.png"
                                        alt="img-thumbnail"
                                    />
                                </div>
                            </article>
                        </li>
                    </a>
                    <!-- 더미데이터 -->
                </ul>
                <div class="bad-review__page-num-container">
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
        <%@ include file="footer.jsp" %>
    </body>
</html>
