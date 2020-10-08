<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>당신 근처의 당근나라</title>
        <link href="css/common.css" rel="stylesheet">
		<script src="javascript/common.js" defer ></script>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcz9VUi%2FbtqJt0b2VUe%2FiiBIEnDkufPInk4hKsunE1%2Fimg.png"
        />
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap"
            rel="stylesheet"
        />
        <style type="text/css">
        	#map {
        		margin-bottom: 50px;
        	}
        </style>
    </head>

    <body>
       
        <!-- 섹션 시작 -->
         <section class="main__section section-1">
            <div class="main__section-container">
        		
        		<!-- 지도가 표시될 div -->
        		<div id="map" style="width:700px;height:600px;"></div>
        		
        		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	8acdec25cc77adb58971fc16cf02bf96"></script>
        		<script type="text/javascript">
        			var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
       				var options = { //지도를 생성할 때 필요한 기본 옵션
        				center: new kakao.maps.LatLng(33.450701, 126.570667), 
        							//지도의 중심좌표.(위도latitude, 경도longitude)
        				level: 3 //지도의 레벨(확대, 축소 정도)
        			};

        			var map = new kakao.maps.Map(container, options);
        			
        			var imageSrc = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FS0wSJ%2FbtqDogzoUNX%2FkZBkpKPGjdGKJSvKKs35D0%2Fimg.png', // 마커이미지의 주소    
        		    imageSize = new kakao.maps.Size(40, 45), // 마커이미지의 크기
        		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정
        		      
        			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성
        			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
        		    	markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치

        			// 마커를 생성
        			var marker = new kakao.maps.Marker({
        		    	position: markerPosition, 
        		    	image: markerImage // 마커이미지 설정 
        			});
        		    	
        			marker.setMap(map);
        		    	
        		</script>
        	</div>
        </section>

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
