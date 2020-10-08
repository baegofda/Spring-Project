<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>${bPost.ptitle }:: 당근나라</title>
        <link rel="stylesheet" href="../../css/common.css" />
        <script src="../../javascript/common.js" defer></script>
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
        
       <!--  <style type="text/css">
        	.buy-board-read__content--article {
        		width: 800px;
        		margin-top: 20px;
        		margin-bottom: 40px;
        	}
		</style> -->
    </head>

    <body>
        <!-- 게시글 보기는 위 head에 title도 글제목으로 불러와주세요 -->
        
        <!-- 섹션 시작 -->
        <article class="article">
            <div class="article__buy-board-read">
                <div class="silder-container">
                    <div class="slider">
                        <div class="slide showing">
                            <img
                                src="/image/${bPost.pimg1 }"
                                alt="이미지1"
                            />
                        </div>
                        <c:if test="${bPost.pimg2 != null }">
                        <div class="slide">
                            <img
                                src="/image/${bPost.pimg2 }"
                                alt="이미지2"
                            />
                        </div>
                        </c:if>
                        <c:if test="${bPost.pimg3 != null }">
                        <div class="slide">
                            <img
                                src="/image/${bPost.pimg3 }"
                                alt="이미지3"
                            />
                        </div>
                        </c:if>
                        <c:if test="${bPost.pimg4 != null }">
                        <div class="slide">
                            <img
                                src="/image/${bPost.pimg4 }"
                                alt="이미지4"
                            />
                        </div>
                        </c:if>
                        <c:if test="${bPost.pimg5 != null }">
                        <div class="slide">
                            <img
                                src="/image/${bPost.pimg5 }"
                                alt="이미지5"
                            />
                        </div>
                        </c:if>
                        <div class="left btns" onclick="left_move();">
                            <i class="fas fa-chevron-left"></i>
                        </div>
                        <div class="right btns" onclick="right_move();">
                            <i class="fas fa-chevron-right"></i>
                        </div>
                    </div>
                </div>
                <div class="buy-board-read__info-container">
                    <div class="buy-board-read__info">
                        <a href="#none"
                            ><div class="buy-board-read__name">${bPost.mnick }</div></a
                        >
                        <p class="buy-board-read__address">
                            	${bPost.maddr }
                        </p>
                    </div>
                    <div class="buy-board-read__sweet-cotainer">
                        <div class="buy-board-read__sweet sweet-cotainer"></div>
                        <div class="buy-board-read__text">당도: ${bPost.msweet }</div>
                    </div>
                </div>
                <div class="buy-board-read__content">
                    <h1 class="buy-board-read__content--title">
                        ${bPost.ptitle }
                    </h1>
                    <div class="buy-board-read__content--detail">
                        <!-- 실제 게시글에 등록된 주소, 카테고리 -->
                        <span
                            >${bPost.maddr }
                            <div class="vertical"></div>
                            	${bPost.ctkinds }
                            <div class="vertical"></div>
                            <c:if test="${bPost.pstatus == 1 }">거래가능</c:if>
                            <c:if test="${bPost.pstatus == 2 }">거래중</c:if>
                            <c:if test="${bPost.pstatus == 3 }">거래완료</c:if>
                            <c:if test="${bPost.pstatus == 4 }">불량거래</c:if>
                        </span>
                    </div>
                    <div class="buy-board-read__content--price">${bPost.pprice }원</div>
                   <!--  <div class="buy-board-read__content--article"> -->
                    	<textarea rows="8" cols="60" readonly><c:out value="${bPost.pcontent }" />
                    	</textarea>
                    <!-- </div> -->
                    <div class="buy-board-read__content--hits">
                        ${bPost.pdate } · 조회수 ${bPost.phit }
                    </div>
                    <div
                        class="buy-board-read__content--counts picks-container"
                    >
                        <img
                            class="picks-ico"
                            src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4Igp3aWR0aD0iMjYiIGhlaWdodD0iMjYiCnZpZXdCb3g9IjAgMCAxNzIgMTcyIgpzdHlsZT0iIGZpbGw6IzAwMDAwMDsiPjxnIHRyYW5zZm9ybT0iIj48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9Im5vbnplcm8iIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBzdHJva2UtZGFzaGFycmF5PSIiIHN0cm9rZS1kYXNob2Zmc2V0PSIwIiBmb250LWZhbWlseT0ibm9uZSIgZm9udC13ZWlnaHQ9Im5vbmUiIGZvbnQtc2l6ZT0ibm9uZSIgdGV4dC1hbmNob3I9Im5vbmUiIHN0eWxlPSJtaXgtYmxlbmQtbW9kZTogbm9ybWFsIj48cGF0aCBkPSJNMCwxNzJ2LTE3MmgxNzJ2MTcyeiIgZmlsbD0ibm9uZSI+PC9wYXRoPjxnIGZpbGw9IiMwMDAwMDAiPjxwYXRoIGQ9Ik01MS4wNjI1LDI2Ljg3NWMtMjIuMjM0ODYsMCAtNDAuMzEyNSwxOC4yODc2IC00MC4zMTI1LDQwLjMxMjVjMCw3LjY4NDU3IDMuNDg1MzUsMTQuMzQwMzMgNi43MTg3NSwxOS4xNDg0NGMzLjIzMzQsNC44MDgxIDYuNTUwNzgsNy44OTQ1MyA2LjU1MDc4LDcuODk0NTNsNTguMTE3MTksNTguMjg1MTZsMy44NjMyOCwzLjg2MzI4bDMuODYzMjgsLTMuODYzMjhsNTguMTE3MTksLTU4LjI4NTE2YzAsMCAxMy4yNjk1MywtMTEuNjk0ODIgMTMuMjY5NTMsLTI3LjA0Mjk3YzAsLTIyLjAyNDkgLTE4LjA3NzY0LC00MC4zMTI1IC00MC4zMTI1LC00MC4zMTI1Yy0xOC40NTU1NywwIC0zMC4zMzkzNSwxMS4xMDY5MyAtMzQuOTM3NSwxNS43ODkwNmMtNC41OTgxNSwtNC42ODIxMyAtMTYuNDgxOTMsLTE1Ljc4OTA2IC0zNC45Mzc1LC0xNS43ODkwNnpNNTEuMDYyNSwzNy42MjVjMTYuMDYyMDEsMCAzMC45MDYyNSwxNS42MjEwOSAzMC45MDYyNSwxNS42MjEwOWw0LjAzMTI1LDQuNTM1MTZsNC4wMzEyNSwtNC41MzUxNmMwLDAgMTQuODQ0MjQsLTE1LjYyMTA5IDMwLjkwNjI1LC0xNS42MjEwOWMxNi4zNTU5NiwwIDI5LjU2MjUsMTMuNDE2NTEgMjkuNTYyNSwyOS41NjI1YzAsOC4yOTM0NiAtMTAuMDc4MTIsMTkuNDg0MzggLTEwLjA3ODEyLDE5LjQ4NDM4bC01NC40MjE4Nyw1NC40MjE4OGwtNTQuNDIxODcsLTU0LjQyMTg3YzAsMCAtMi42MDM1MiwtMi40OTg1NCAtNS4yMDcwMywtNi4zODI4MWMtMi42MDM1MiwtMy44ODQyOCAtNC44NzEwOSwtOC45NDQzMyAtNC44NzEwOSwtMTMuMTAxNTZjMCwtMTYuMTQ1OTkgMTMuMjA2NTQsLTI5LjU2MjUgMjkuNTYyNSwtMjkuNTYyNXoiPjwvcGF0aD48L2c+PC9nPjwvZz48L3N2Zz4="
                            alt="picks"
                        />
                    </div>
                </div>
                <div class="buy-board-read__btn-container">
                    <a href="buylist.do"
                        ><div class="buy-board-read__list list-btn">
                            목록
                        </div></a
                    >
                    <!-- java script(common.js)로 넘길 데이터 -->
                    <input id="pnum" type="hidden" value="${bPost.pnum }">
                    
                    <input
                        class="buy-board-read__delete"
                        type="button"
                        value="삭제"
                    />
                    
                    <input
                        class="buy-board-read__update"
                        type="button"
                        value="수정"
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
