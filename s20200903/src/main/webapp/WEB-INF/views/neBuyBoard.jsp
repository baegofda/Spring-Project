<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>구매합니다~! :: 당근나라</title>
        
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
        
        <section class="section">
            <div class="to-buy">
                <div class="to-buy__head-container">
                    <div class="to-buy__sort">
                        <select class="buy-board-write__category" name="ctcode" required>
						<option value="" disabled selected hidden>카테고리</option>
						<option value="1">디지털/가전</option>
						<option value="2">가구/인테리어</option>
						<option value="3">유아동/유아도서</option>
						<option value="4">생활/가공식품</option>
						<option value="5">스포츠/레저</option>
						<option value="6">여성잡화</option>
						<option value="7">여성의류</option>
						<option value="8">남성패션/잡화</option>
						<option value="9">게임/취미</option>
						<option value="10">뷰티/미용</option>
						<option value="11">반려동물용품</option>
						<option value="12">도서/티켓/음반</option>
						<option value="13">기타중고물품</option>
					</select>
                    </div>
                    <div class="to-buy__head">
                        <h1 class="to-buy__title">구매합니다 ~!</h1>
                        <p class="to-buy__sub">
                            <strong class="to-buy__total-head">전체 글</strong>
                            <!-- 불러오는 게시글 갯수불러오기 -->
                            <span class="to-buy__count">${pg.total }</span>
                        </p>
                        <a href="buyPostWriteForm.do"
                            ><div class="to-buy__write">글작성</div></a
                        >
                    </div>
                </div>
                <!-- 태그 안에 있는 더미 데이터들은 틀을 보기 위함이며 실제 작업시엔 해당 데이터를 불러 올 수 있도록 변경 부탁드립니다. -->
                <ul class="to-buy__content">
                    <!-- 링크수정하기 -->
                   <c:forEach var="bPost" items="${blist }">
                    <a href="buyPostDetail.do?pnum=${bPost.pnum}">
                        <li>
                            <article class="board__content">
                                <div class="board__content--text">
                                    <!-- 게시글 제목불러오기 -->
                                    <h1>${bPost.ptitle}</h1>
                                    <!-- 게시글 내용 불러오기 -->
                                    <div class="summary">
                         				${bPost.pcontent}
                                    </div>
                                    <div class="board__content--detail">
                                        <!-- 실제 게시글에 등록된 주소, 카테고리, 날짜로 변경 -->
                                        <span>${bPost.maddr}
                                            <div class="vertical">
                                            </div>
                                            ${bPost.ctkinds}
                                            <div class="vertical"></div>
                                            ${bPost.pdate}
                                            <div class="vertical"></div>
                                   			조회수 ${bPost.phit}
                                        </span>
                                    </div>
                                </div>
                                <div class="board__content--thumbnail">
                                    <!-- 해당 게시글의 썸네일을 불러올 수 있도록 하기 -->
                                    <img
                                        class="thumbnail"
                                        src="/image/${bPost.pimg1 }"
                                        alt="img-thumbnail"
                                    />
                                    <!-- src="https://dnvefa72aowie.cloudfront.net/origin/article/202008/881bb464c1c1ed69f59df65d9e25b56d2714b920f81c8e72512664e503b43902.webp?q=95&s=1440x1440&t=inside" -->
                                </div>
                            </article>
                        </li>
                    </a>
                   </c:forEach>
                    <!-- 삭제 더미데이터 -->
                    
                    <!-- 더미데이터 -->
                </ul>
                <div class="to-buy__page-num-container">
                    <ul class="page-num-container">
                    	<c:if test="${pg.startPage > pg.pageBlock }">
                       		<a href="buylist.do?currentPage=${pg.startPage-pg.pageBlock}">
                            	<li
                                class="page-num-container__left-btn page-num-container__btn"
                            	>
                               	 <i class="fas fa-chevron-left"></i>
                           		</li>
                        	</a>
                        </c:if>
                        
                        	<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
                        		<a href="buylist.do?currentPage=${i}">
                            		<li class="page-num-container__num">${i}</li>
                        		</a>
                        	</c:forEach>
                        
                        <c:if test="${pg.endPage < pg.totalPage }">
                        	<a href="buylist.do?currentPage=${pg.startPage+pg.pageBlock}">
                            <li
                                class="page-num__right-btn page-num-container__btn"
                            >
                                <i class="fas fa-chevron-right"></i>
                            </li>
                       		</a>
                       	</c:if>                   
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
