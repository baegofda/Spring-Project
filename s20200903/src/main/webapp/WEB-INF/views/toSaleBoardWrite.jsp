<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>글작성하기 :: 당근나라</title>
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
        <article class="article">
            <div class="article__sale-board-write">
                <div class="sale-board-write__sort">
                    <select
                        class="sale-board-write__category"
                        name="sale-board-write__category--code"
                        required
                    >
                        <option value="" disabled selected hidden>
                            카테고리
                        </option>
                        <option value="digital">디지털/가전</option>
                        <option value="furniture">가구/인테리어</option>
                        <option value="children">유아동/유아도서</option>
                        <option value="life">생활/가공식품</option>
                        <option value="sports">스포츠/레저</option>
                        <option value="women-acc">여성잡화</option>
                        <option value="women-cloth">여성의류</option>
                        <option value="men-acc">남성패션/잡화</option>
                        <option value="game">게임/취미</option>
                        <option value="beauty">뷰티/미용</option>
                        <option value="pet">반려동물용품</option>
                        <option value="culture">도서/티켓/음반</option>
                        <option value="other">기타중고물품</option>
                    </select>
                </div>
                <div class="sale-board-write__info">
                    <div class="sale-board-write__location">
                        <label
                            class="sale-board-write__location--label"
                            for="sale-board-write__location--input"
                            >활동 지역</label
                        >
                        <input
                            class="sale-board-write__location--input"
                            type="text"
                            readonly
                            value="회원 주소값 넣기"
                        />
                    </div>
                    <div class="sale-board-write__price">
                        <label
                            class="sale-board-write__price--label"
                            for="sale-board-write__price--input"
                            >거래 가격</label
                        >
                        <input
                            class="sale-board-write__price--input"
                            type="text"
                            placeholder="가격을 입력해주세요"
                            required
                        />
                    </div>
                </div>
                <div class="sale-board-write__image">
                    <div class="sale-board-write__image--title">사진 첨부</div>
                    <div class="sale-board-write__image--container">
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-1"></div>
                                <input
                                    class="image--input image-1"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-2"></div>
                                <input
                                    class="image--input image-2"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-3"></div>
                                <input
                                    class="image--input image-3"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-4"></div>
                                <input
                                    class="image--input image-4"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-5"></div>
                                <input
                                    class="image--input image-5"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                    </div>
                </div>
                <div class="sale-board-write__title">
                    <textarea
                        class="sale-board-write__title--textarea"
                        placeholder="제목을 입력해주세요"
                        required
                    ></textarea>
                </div>
                <div class="sale-board-write__content">
                    <textarea
                        class="sale-board-write__content--textarea"
                        placeholder="내용을 입력해주세요"
                        required
                    ></textarea>
                </div>
                <div class="sale-board-write__btn-container">
                    <a href="#none"
                        ><div class="sale-board-write__list list--btn">
                            돌아가기
                        </div></a
                    >
                    <input
                        class="sale-board-write__submit"
                        type="button"
                        value="작성하기"
                    />
                </div>
            </div>
        </article>

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
