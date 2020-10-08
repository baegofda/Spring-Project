<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp"%>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>판매중이에요~! :: 당근나라</title>
<link href="css/common.css" rel="stylesheet">
<script src="javascript/common.js" defer ></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/797af710b1.js"
	crossorigin="anonymous" defer></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
	defer></script>
<link rel="shortcut icon" type="image/x-icon"
	href="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcz9VUi%2FbtqJt0b2VUe%2FiiBIEnDkufPInk4hKsunE1%2Fimg.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap"
	rel="stylesheet" />
</head>

<body>
	
	<!-- 섹션 시작 -->
	<div class="to-sale">
		<!-- 판매게시판 시작 -->
		<div class="to-sale__article-container">
			<div class="to-sale__head-container">
				<div class="to-sale__sort">
					<select class="to-sale__category" name="to-sale__category">
						<option value="all" selected>전체</option>
						<option value="date">최근 30일</option>
						<option value="picks">관심순</option>
						<option value="hit">조회순</option>
					</select> 
					
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
				<div class="to-sale__head">
					<h1 class="to-sale__title">판매중</h1>
					<p class="to-sale__sub">
						<strong class="to-sale__total-head">전체 글</strong>
						<!-- 불러오는 게시글 갯수불러오기 -->
						<span class="to-sale__count">${pg.total}</span>
					</p>
					<!-- 링크 수정 -->
					<a href="boardWrite.html"><div
							class="to-sale__write">글작성</div></a>
				</div>
			</div>
			<!-- 각 최신글 9 ~ 12개만 띄어주시면 됩니다 -->
			<div class="to-sale__content">
				<!-- 태그 안에 있는 더미 데이터들은 틀을 보기 위함이며 실제 작업시엔 해당 데이터를 불러 올 수 있도록 변경 부탁드립니다. -->
				<c:forEach var="Post" items="${saSList }">
					<article class="to-sale__article">
						<a href="#">
							<div class="to-sale__content--thumbnail">
									<img
										src="/image/${Post.pimg1}"
										alt="thumbnail" />
							</div>
							<div class="to-sale__content--text">
								<h1 class="to-sale__content--text__title">${Post.ptitle}</h1>
								<p class="to-sale__content--text__address">${Post.maddr}</p>
								<div class="to-sale__content--text__date">
									<div class="to-sale__content--date">${Post.pdate}</div>
									<div class="to-sale__content--hit">조회수 ${Post.phit}</div>
								</div>
								<div class="to-sale__content--text__price">
									<div class="to-sale__content--price">${Post.pprice}원</div>
									<div class="to-sale__content--picks">
										<img
											src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg"
											alt="picks" />
										${Post.ppicks}
									</div>
								</div>
							</div>
						</a>
					</article>
				</c:forEach>
			</div>
		</div>
		<div class="to-sale__page-num-container">
			<ul class="page-num-container">
				<a href="#">
					<li class="page-num-container__left-btn page-num-container__btn">
						<i class="fas fa-chevron-left"></i>
				</li>
				</a>
				<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
					<a href="SearchSaleList.do?sword=${sword }&currentPage=${i}">
						<li class="page-num-container__num">${i}</li>
					</a>
				</c:forEach>
				<a href="SearchSaleList.do?sword=${sword }&currentPage=${i+1}">
					<li class="page-num__right-btn page-num-container__btn"><i
						class="fas fa-chevron-right"></i></li>
				</a>
			</ul>
		</div>
	</div>
	<!-- 하단 카피라이트 -->
	<footer class="footer">
		<div class="footer-container">
			<div class="footer-top">
				<div class="footer-top-logo"></div>
				<ul class="footer-top-list">
					<li class="footer-top-list-content"><a
						href="https://www.daangn.com/trust">믿을
							수 있는 중고거래</a></li>
					<li class="footer-top-list-content"><a
						href="https://www.daangn.com/wv/faqs"> 자주 묻는 질문</a></li>
				</ul>
				<ul class="footer-top-list">
					<li class="footer-top-list-content"><a
						href="https://www.notion.so/3d0197c137ec43d18ff739b5b254a3c8/">
							회사 소개 </a></li>
					<li class="footer-top-list-content"><a
						href="https://ad.daangn.com/"> 광고주센터 </a></li>
					<li class="footer-top-list-content"><a
						href="https://town.daangn.com/"> 동네가게 </a></li>
				</ul>
				<ul class="footer-top-list">
					<li class="footer-top-list-content"><a
						href="https://www.daangn.com/policy/terms"> 이용약관 </a></li>
					<li class="footer-top-list-content"><a
						href="https://www.daangn.com/policy/privacy"> 개인정보 취급방침 </a></li>
					<li class="footer-top-list-content"><a
						href="https://www.daangn.com/policy/location"> 위치기반서비스 이용약관 </a></li>
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
							<address>사업자 등록번호 : 375-87-000-88</address>
							<address>서울특별시 구로구 디지털로 30길 28 609호</address>
						</li>
						<li class="footer-bottom-list-conent">©Danggeun Market Inc.</li>
					</ul>
				</div>
				<div class="footer-bottom-sns">
					<ul class="footer-bottom-sns-container">
						<li class="sns-icon"><a
							href="https://www.facebook.com/daangn"> <img
								src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-facebook-0563f4a93852d073b41f13b8bcabb03d47af3bb3a6755cdfedd8a73686c7f18c.svg" />
						</a></li>
						<li class="sns-icon"><a
							href="https://www.instagram.com/daangnmarket/">
								<img
								src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-instagram-2f6c88a461597907c114b7ce28eab053fcae791ed26417915fefb6f7c9f95756.svg" />
						</a></li>
						<li class="sns-icon"><a href="https://blog.naver.com/daangn">
								<img
								src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-blog-e1b0d512d1766a6962ec5bbb5b0803d2a6a9c55ad97db5ba9eebb76013caceba.svg" />
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
