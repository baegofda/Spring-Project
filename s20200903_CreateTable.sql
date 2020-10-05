DROP TABLE board;
DROP TABLE categori;
DROP TABLE chat;
DROP TABLE comments;
DROP TABLE lastsearch;
DROP TABLE member;
DROP TABLE picks;
DROP TABLE post;
DROP TABLE search;
DROP TABLE tradestatus;

/* 게시판 */
CREATE TABLE BOARD (
   BID NUMBER(2) NOT NULL, /* 게시판구분 */
   BNAME VARCHAR2(60) /* 게시판이름 */
);

CREATE UNIQUE INDEX PK_BOARD
   ON BOARD (
      BID ASC
   );

ALTER TABLE BOARD
   ADD
      CONSTRAINT PK_BOARD
      PRIMARY KEY (
         BID
      );

COMMENT ON TABLE BOARD IS '게시판';

COMMENT ON COLUMN BOARD.BID IS '게시판구분';

COMMENT ON COLUMN BOARD.BNAME IS '게시판이름';

/* 카테고리 */
CREATE TABLE CATEGORI (
   CTCODE NUMBER(2) NOT NULL, /* 카테고리코드 */
   DTKINDS VARCHAR2(300) /* 카테고리종류 */
);

CREATE UNIQUE INDEX PK_CATEGORI
   ON CATEGORI (
      CTCODE ASC
   );

ALTER TABLE CATEGORI
   ADD
      CONSTRAINT PK_CATEGORI
      PRIMARY KEY (
         CTCODE
      );

COMMENT ON TABLE CATEGORI IS '카테고리';

COMMENT ON COLUMN CATEGORI.CTCODE IS '카테고리코드';

COMMENT ON COLUMN CATEGORI.DTKINDS IS '카테고리종류';

/* 실시간채팅 */
CREATE TABLE CHAT (
   CHNUM NUMBER(10) NOT NULL, /* 메세지번호 */
   MID VARCHAR2(50) NOT NULL, /* 회원아이디 */
   CHCONTENT VARCHAR2(900), /* 채팅내용 */
   CHDATE DATE /* 채팅일시 */
);

CREATE UNIQUE INDEX PK_CHAT
   ON CHAT (
      CHNUM ASC,
      MID ASC
   );

ALTER TABLE CHAT
   ADD
      CONSTRAINT PK_CHAT
      PRIMARY KEY (
         CHNUM,
         MID
      );

COMMENT ON TABLE CHAT IS '실시간채팅';

COMMENT ON COLUMN CHAT.CHNUM IS '메세지번호';

COMMENT ON COLUMN CHAT.MID IS '회원아이디';

COMMENT ON COLUMN CHAT.CHCONTENT IS '채팅내용';

COMMENT ON COLUMN CHAT.CHDATE IS '채팅일시';

/* 댓글 */
CREATE TABLE COMMENTS (
   BID NUMBER(2) NOT NULL, /* 게시판구분 */
   PNUM NUMBER(10) NOT NULL, /* 게시글번호 */
   CNUM NUMBER(3) NOT NULL, /* 댓글번호 */
   CCMNT VARCHAR2(300), /* 댓글내용 */
   CDATE DATE, /* 댓글작성일시 */
   CLEVEL NUMBER(2) /* 댓글등급 */
);

CREATE UNIQUE INDEX PK_COMMENTS
   ON COMMENTS (
      BID ASC,
      PNUM ASC,
      CNUM ASC
   );

ALTER TABLE COMMENTS
   ADD
      CONSTRAINT PK_COMMENTS
      PRIMARY KEY (
         BID,
         PNUM,
         CNUM
      );

COMMENT ON TABLE COMMENTS IS '댓글';

COMMENT ON COLUMN COMMENTS.BID IS '게시판구분';

COMMENT ON COLUMN COMMENTS.PNUM IS '게시글번호';

COMMENT ON COLUMN COMMENTS.CNUM IS '댓글번호';

COMMENT ON COLUMN COMMENTS.CCMNT IS '댓글내용';

COMMENT ON COLUMN COMMENTS.CDATE IS '댓글작성일시';

COMMENT ON COLUMN COMMENTS.CLEVEL IS '댓글등급';

/* 최근검색어 */
CREATE TABLE LASTSEARCH (
   MID VARCHAR2(50) NOT NULL, /* 회원아이디 */
   LSEARCH VARCHAR2(500) /* 최근검색어 */
);

CREATE UNIQUE INDEX PK_LASTSEARCH
   ON LASTSEARCH (
      MID ASC
   );

ALTER TABLE LASTSEARCH
   ADD
      CONSTRAINT PK_LASTSEARCH
      PRIMARY KEY (
         MID
      );

COMMENT ON TABLE LASTSEARCH IS '최근검색어';

COMMENT ON COLUMN LASTSEARCH.MID IS '회원아이디';

COMMENT ON COLUMN LASTSEARCH.LSEARCH IS '최근검색어';

/* 회원정보 */
CREATE TABLE MEMBER (
   MID VARCHAR2(50) NOT NULL, /* 회원아이디 */
   MNICK VARCHAR2(50) NOT NULL, /* 회원닉네임 */
   MNAME VARCHAR2(30) NOT NULL, /* 회원이름 */
   MPW VARCHAR2(50), /* 회원비밀번호 */
   MADDR VARCHAR2(300), /* 회원주소 */
   MADDR2 VARCHAR2(300), /* 회원상세주소 */
   MTEL VARCHAR2(30), /* 회원휴대폰번호 */
   MLEVEL NUMBER(2), /* 회원구분 */
   MSWEET NUMBER(3, 1), /* 회원당도 */
   MDATE DATE, /* 회원가입일자 */
   MMAIL VARCHAR2(50), /* 광고메일수신신동의여부 */
   MSMS VARCHAR2(50) /* 광고문자수신신동의여부 */
);

CREATE UNIQUE INDEX PK_MEMBER
   ON MEMBER (
      MID ASC
   );

ALTER TABLE MEMBER
   ADD
      CONSTRAINT PK_MEMBER
      PRIMARY KEY (
         MID
      );

COMMENT ON TABLE MEMBER IS '회원정보';

COMMENT ON COLUMN MEMBER.MID IS '회원아이디';

COMMENT ON COLUMN MEMBER.MNICK IS '회원닉네임';

COMMENT ON COLUMN MEMBER.MNAME IS '회원이름';

COMMENT ON COLUMN MEMBER.MPW IS '회원비밀번호';

COMMENT ON COLUMN MEMBER.MADDR IS '회원주소';

COMMENT ON COLUMN MEMBER.MADDR2 IS '회원상세주소';

COMMENT ON COLUMN MEMBER.MTEL IS '회원휴대폰번호';

COMMENT ON COLUMN MEMBER.MLEVEL IS '회원구분';

COMMENT ON COLUMN MEMBER.MSWEET IS '회원당도';

COMMENT ON COLUMN MEMBER.MDATE IS '회원가입일자';

COMMENT ON COLUMN MEMBER.MMAIL IS '광고메일수신신동의여부';

COMMENT ON COLUMN MEMBER.MSMS IS '광고문자수신신동의여부';

/* 관심목록 */
CREATE TABLE PICKS (
   BID NUMBER(2) NOT NULL, /* 게시판구분 */
   PNUM NUMBER(10) NOT NULL, /* 게시글번호 */
   MID VARCHAR2(50) NOT NULL /* 회원아이디 */
);

CREATE UNIQUE INDEX PK_PICKS
   ON PICKS (
      BID ASC,
      PNUM ASC,
      MID ASC
   );

ALTER TABLE PICKS
   ADD
      CONSTRAINT PK_PICKS
      PRIMARY KEY (
         BID,
         PNUM,
         MID
      );

COMMENT ON TABLE PICKS IS '관심목록';

COMMENT ON COLUMN PICKS.BID IS '게시판구분';

COMMENT ON COLUMN PICKS.PNUM IS '게시글번호';

COMMENT ON COLUMN PICKS.MID IS '회원아이디';

/* 게시글 */
CREATE TABLE POST (
   BID NUMBER(2) NOT NULL, /* 게시판구분 */
   PNUM NUMBER(10) NOT NULL, /* 게시글번호 */
   MID VARCHAR2(50), /* 회원아이디 */
   CTCODE NUMBER(2), /* 카테고리코드 */
   PSTATUS NUMBER(2), /* 거래상태코드 */
   PTITLE VARCHAR2(150), /* 게시글제목 */
   PPRICE NUMBER(8), /* 물품가격 */
   PDATE DATE, /* 게시글등록일자 */
   PCONTENT VARCHAR2(900), /* 게시글내용 */
   PHIT NUMBER(10), /* 게시글조회수 */
   PPICKS NUMBER(5), /* 관심개수 */
   PIMG1 VARCHAR2(500), /* 게시글이미지1 */
   PIMG2 VARCHAR2(500), /* 게시글이미지2 */
   PIMG3 VARCHAR2(500), /* 게시글이미지3 */
   PIMG4 VARCHAR2(500), /* 게시글이미지4 */
   PIMG5 VARCHAR2(500) /* 게시글이미지5 */
);

CREATE UNIQUE INDEX PK_POST
   ON POST (
      BID ASC,
      PNUM ASC
   );

ALTER TABLE POST
   ADD
      CONSTRAINT PK_POST
      PRIMARY KEY (
         BID,
         PNUM
      );

COMMENT ON TABLE POST IS '게시글';

COMMENT ON COLUMN POST.BID IS '게시판구분';

COMMENT ON COLUMN POST.PNUM IS '게시글번호';

COMMENT ON COLUMN POST.MID IS '회원아이디';

COMMENT ON COLUMN POST.CTCODE IS '카테고리코드';

COMMENT ON COLUMN POST.PSTATUS IS '거래상태코드';

COMMENT ON COLUMN POST.PTITLE IS '게시글제목';

COMMENT ON COLUMN POST.PPRICE IS '물품가격';

COMMENT ON COLUMN POST.PDATE IS '게시글등록일자';

COMMENT ON COLUMN POST.PCONTENT IS '게시글내용';

COMMENT ON COLUMN POST.PHIT IS '게시글조회수';

COMMENT ON COLUMN POST.PPICKS IS '관심개수';

COMMENT ON COLUMN POST.PIMG1 IS '게시글이미지1';

COMMENT ON COLUMN POST.PIMG2 IS '게시글이미지2';

COMMENT ON COLUMN POST.PIMG3 IS '게시글이미지3';

COMMENT ON COLUMN POST.PIMG4 IS '게시글이미지4';

COMMENT ON COLUMN POST.PIMG5 IS '게시글이미지5';

/* 검색어추천 */
CREATE TABLE SEARCH (
   SWORD VARCHAR2(150) NOT NULL, /* 검색어 */
   SCNT NUMBER(10) /* 검색횟수 */
);

CREATE UNIQUE INDEX PK_SEARCH
   ON SEARCH (
      SWORD ASC
   );

ALTER TABLE SEARCH
   ADD
      CONSTRAINT PK_SEARCH
      PRIMARY KEY (
         SWORD
      );

COMMENT ON TABLE SEARCH IS '검색어추천';

COMMENT ON COLUMN SEARCH.SWORD IS '검색어';

COMMENT ON COLUMN SEARCH.SCNT IS '검색횟수';

/* 거래상태 */
CREATE TABLE TRADESTATUS (
   BID NUMBER(2) NOT NULL, /* 게시판구분 */
   PNUM NUMBER(10) NOT NULL, /* 게시글번호 */
   PID VARCHAR2(50), /* 작성자아이디 */
   TID VARCHAR2(50), /* 거래자아이디 */
   TDATE DATE /* 거래일시 */
);

CREATE UNIQUE INDEX PK_TRADESTATUS
   ON TRADESTATUS (
      BID ASC,
      PNUM ASC
   );

ALTER TABLE TRADESTATUS
   ADD
      CONSTRAINT PK_TRADESTATUS
      PRIMARY KEY (
         BID,
         PNUM
      );

COMMENT ON TABLE TRADESTATUS IS '거래상태';

COMMENT ON COLUMN TRADESTATUS.BID IS '게시판구분';

COMMENT ON COLUMN TRADESTATUS.PNUM IS '게시글번호';

COMMENT ON COLUMN TRADESTATUS.PID IS '작성자아이디';

COMMENT ON COLUMN TRADESTATUS.TID IS '거래자아이디';

COMMENT ON COLUMN TRADESTATUS.TDATE IS '거래일시';

ALTER TABLE CHAT
   ADD
      CONSTRAINT FK_MEMBER_TO_CHAT
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE COMMENTS
   ADD
      CONSTRAINT FK_POST_TO_COMMENTS
      FOREIGN KEY (
         BID,
         PNUM
      )
      REFERENCES POST (
         BID,
         PNUM
      );

ALTER TABLE LASTSEARCH
   ADD
      CONSTRAINT FK_MEMBER_TO_LASTSEARCH
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE PICKS
   ADD
      CONSTRAINT FK_POST_TO_PICKS
      FOREIGN KEY (
         BID,
         PNUM
      )
      REFERENCES POST (
         BID,
         PNUM
      );

ALTER TABLE PICKS
   ADD
      CONSTRAINT FK_MEMBER_TO_PICKS
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE POST
   ADD
      CONSTRAINT FK_BOARD_TO_POST
      FOREIGN KEY (
         BID
      )
      REFERENCES BOARD (
         BID
      );

ALTER TABLE POST
   ADD
      CONSTRAINT FK_CATEGORI_TO_POST
      FOREIGN KEY (
         CTCODE
      )
      REFERENCES CATEGORI (
         CTCODE
      );

ALTER TABLE POST
   ADD
      CONSTRAINT FK_MEMBER_TO_POST
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE TRADESTATUS
   ADD
      CONSTRAINT FK_POST_TO_TRADESTATUS
      FOREIGN KEY (
         BID,
         PNUM
      )
      REFERENCES POST (
         BID,
         PNUM
      );
      
insert into member values('way990@naver.com' ,'way999', '안태빈', 'dksxoqls1@#', '경기도 수원시 권선구 구운동', '0000번지', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('way99991@gmail.com' ,'way900', '자바', 'qwe!@#123', '경기도 수원시 권선구 구운동', '', '01012345678', 1, 0, sysdate, 'off', 'off');
insert into member values('way99992@gmail.com' ,'way000', '강낭콩', '1q2w3e!@#', '경기도 광명시', '', '01023456789', 1, 0, sysdate, 'on', 'on');
insert into member values('way99993@gmail.com' ,'way143', '홍길동', 'qweasd!@#', '경기도 화성시', '0000번지', '01000000000', 1, 0, sysdate, 'on', 'on');
insert into member values('way000990@gmail.com' ,'가나다라', '123123123', 'qazwsx1@#', '경기도 하남시', '0000번지', '01099999999', 1, 0, sysdate, 'on', 'on');
insert into member values('lee111@gmail.com' ,'이진영', '진영lee', 'qazwsx1@#', '서울특별시 강남구', '0000번지', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('jeong01@gmail.com' ,'정석준', '석준jeong', '1q2w3e!@#', '서울특별시 관악구', '0000번지', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('jong01@gmail.com' ,'이종환', '종환lee', '1q2w3e!@#', '경기도 오산시', '0000번지', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('june03@gmail.com' ,'이준호', '준호lee', '1q2w3e!@#', '경기도 수원시 영통구 광교동', '0000번지', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('bae01@gmail.com' ,'정현배', '현배jeong', '1q2w3e!@#', '경기도 수원시 팔달구 인계동', '0000번지', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('user@naver.com' ,'유저', '홍길동', 'user', '경기도 수원시 권선구 구운동', '0000번지', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('carrot@naver.com' ,'당근', '홍당근', 'carrot', '경기도 수원시 권선구 구운동', '0000번지', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('bunny@naver.com' ,'바니', '김바니', 'bunny', '경기도 수원시 권선구 구운동', '0000번지', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('tokki@naver.com' ,'토끼', '김토끼', 'tokki', '경기도 수원시 권선구 구운동', '0000번지', '01092214128', 1, 0, sysdate, 'on', 'on');
insert into member values('admin','관리자','관리자','admin','주소','번지','폰번호',0,0,sysdate,'on','on');


INSERT INTO board VALUES(00, '공지사항');
INSERT INTO board VALUES(01, '판매게시판');
INSERT INTO board VALUES(02, '구매게시판');
INSERT INTO board VALUES(03, '나눔게시판');
INSERT INTO board VALUES(04, '불량거래게시판');

INSERT INTO categori VALUES(00, '공지사항');
INSERT INTO categori VALUES(99, '불량거래');

INSERT INTO categori VALUES(01, '디지털/가전');
INSERT INTO categori VALUES(02, '가구/인테리어');
INSERT INTO categori VALUES(03, '유아동/유아도서');
INSERT INTO categori VALUES(04, '생활/가공식품');
INSERT INTO categori VALUES(05, '스포츠/레저');
INSERT INTO categori VALUES(06, '여성잡화');
INSERT INTO categori VALUES(07, '여성의류');
INSERT INTO categori VALUES(08, '남성패션/잡화');
INSERT INTO categori VALUES(09, '게임/취미');
INSERT INTO categori VALUES(10, '뷰티/미용');
INSERT INTO categori VALUES(11, '반려동물용품');
INSERT INTO categori VALUES(12, '도서/티켓/음반');
INSERT INTO categori VALUES(13, '기타중고물품');




--pstatus 0.공지사항 1.거래가능 2.거래중 3.거래완료 9.불량거래

--판매 data
INSERT INTO post VALUES(01,1,'tokki@naver.com' ,01,1,'아이폰 팝니다',800000,sysdate,'아이폰 직거래 팝니다 --content',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,2,'user@naver.com',04,1,'귤 팝니다',10000,sysdate,'싱싱한 귤 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,3,'carrot@naver.com',12,1,'책 팝니다',5000,sysdate,'책 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,4,'bunny@naver.com',07,1,'옷 팝니다',20000,sysdate,'옷 직거래 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,5,'lee111@gmail.com',11,1,'고양이 사료 팝니다',20000,sysdate,'고양이 사료 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,6,'lee111@gmail.com',02,1,'옷장 팝니다',20000,sysdate,'옷장 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,7,'lee111@gmail.com',13,1,'아무거나 팝니다',99999,sysdate,'아무거나 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,8,'lee111@gmail.com',08,1,'바지 팝니다',10000,sysdate,'바지 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,9,'lee111@gmail.com',12,1,'티켓 팝니다',59999,sysdate,'티켓 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,10,'lee111@gmail.com',06,1,'목걸이 팝니다',6000,sysdate,'옷장 팝니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,11,'lee111@gmail.com',06,1,'반지 팝니다',85000,sysdate,'반지 팝니다',0,0,null,null,null,null,null);


--구매게시판 Data
INSERT INTO post VALUES(02, 1, 'bunny@naver.com', 01, 1,'다이슨에어랩',300000,sysdate,'새제품 삽니다.',0,0,'당근기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 2, 'carrot@naver.com', 03, 1,'베이비몬테소리 교구장포함',50000,sysdate,'분실 5개내외인 세트 삽니다~',0,0,'확성기기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 3, 'user@naver.com', 01, 1,'삽니다.에어팟프로 미개봉or상태좋은거 삽니다.',190000,sysdate,'에어팟프로..미개봉 또는 상태 좋은것으로 구매 원합니다. 인터넷.쿠팡에보다 저렴하게 구매원해서 당근 부탁합니다...',0,0,'당근기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 4, 'tokki@naver.com', 04, 1,'(삽니다) 스타벅스 아메리카노 기프티콘 삽니다~',3000,sysdate,'아이스 아메리카노 톨사이즈 쿠폰 3000원에 여러 장 살게요~ 기한은 1주 여유만 있어도 사요^^!많이 톡 주세요!',0,0,'확성기기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 5, 'tokki@naver.com', 01, 1,'삽니다)PS4 저스트댄스 2020 삽니다',30000,sysdate,'플스 저스트댄스 2020 삽니다',0,0,'당근기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 6, 'tokki@naver.com', 01, 2,'이지블루 삽니다',300000,sysdate,'폰과 컴, 마우스 연결하는 동글요. 쓴거여도 무방핟니다. 정상 작동하는 것 삽니다.',0,0,'확성기기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 7, 'user@naver.com', 03, 1,'여아3-4세옷 일괄삽니다~~',null,sysdate,'여아옷 3-4세 일괄 사고싶어요^^ 그냥주셔도 좋구여 매너손하겟습니다',0,0,'당근기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 8, 'bunny@naver.com', 06, 1,'사진에있는지갑만삽니다)카카오 kakao 회사 지갑삽니다',null,sysdate,'캐릭터아니고 kakao써있는지갑삽니다',0,0,'확성기기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 9, 'user@naver.com', 01, 1,'애플펜슬1 미개봉 삽니다',90000,sysdate,'1세대 미개봉 구해요',0,0,'당근기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 10, 'bunny@naver.com', 03, 1,'헤밍웨이 삼국유사 삼국사기 고려사 80권 판매합니다',20000,sysdate,'-상품명 : 헤밍웨이 삼국유사 삼국사기 고려사80권 -판매가격 : 20,000원 낙서나 파본 없이 깨끗한 책입니다 책이라 한티 직거래만 가능하며, 반품은 어렵습니다',0,0,'확성기기본이미지.png',null,null,null,null);
INSERT INTO post VALUES(02, 11, 'bunny@naver.com', 01, 1,'사요사요다이슨에어랩',300000,sysdate,'새제품 삽니다.',0,0,'당근기본이미지.png',null,null,null,null);

--나눔 data 
INSERT INTO post VALUES(03,1,'tokki@naver.com' ,01,1,'아이폰케이스 무료 나눔합니다',0,sysdate,'아이폰케이스 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,2,'user@naver.com',04,1,'귤 무료 나눔합니다',0,sysdate,'싱싱한 귤 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,3,'carrot@naver.com',12,1,'책 무료 나눔합니다',0,sysdate,'책 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,4,'bunny@naver.com',07,1,'옷 무료 나눔합니다',0,sysdate,'옷 직거래 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,5,'lee111@gmail.com',11,1,'고양이 사료 무료 나눔합니다',0,sysdate,'고양이 사료 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,6,'lee111@gmail.com',02,1,'옷장 무료 나눔합니다',0,sysdate,'옷장 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,7,'lee111@gmail.com',13,1,'아무거나 무료 나눔합니다',0,sysdate,'아무거나 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,8,'lee111@gmail.com',08,1,'바지 무료 나눔합니다',0,sysdate,'바지 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,9,'lee111@gmail.com',12,1,'티켓 무료 나눔합니다',0,sysdate,'티켓 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,10,'lee111@gmail.com',06,1,'목걸이 무료 나눔합니다',0,sysdate,'옷장 무료 나눔합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,11,'lee111@gmail.com',06,1,'반지 무료 나눔합니다',0,sysdate,'반지 무료 나눔합니다',0,0,null,null,null,null,null);

--불량거래 data 
INSERT INTO post VALUES(04,1,'way990@naver.com' ,null,null,'사기 당했습니다',null,sysdate,'사기 당했습니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,2,'way99991@gmail.com',null,null,'품질 불량 입니다',null,sysdate,'품질 불량 입니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,3,'way99992@gmail.com',null,null,'비 매너 회원 입니다',null,sysdate,'비 매너 회원 입니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,4,'way99993@gmail.com',null,null,'판매자와 연락이 안됩니다',null,sysdate,'판매자와 연락이 안됩니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,5,'way000990@gmail.com',null,null,'위치가 다릅니다',null,sysdate,'위치가 다릅니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,6,'lee111@gmail.com',null,null,'겉만 멀쩡한 상품',null,sysdate,'겉만 멀쩡한 상품',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,7,'jeong01@gmail.com',null,null,'불량 거래 입니다',null,sysdate,'불량 거래 입니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,8,'jong01@gmail.com',null,null,'지속적인 비매너 고발',null,sysdate,'지속적인 비매너 고발',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,9,'june03@gmail.com',null,null,'정지 먹은 어느 회원과 행동 패턴이 비슷합니다',null,sysdate,'정지 먹은 어느 회원과 행동 패턴이 비슷합니다',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,10,'bae01@gmail.com',null,null,'정지 정지 정지',null,sysdate,'정지 정지 정지',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,11,'user@naver.com',null,null,'더이상 팔게 없습니다',null,sysdate,'더이상 팔게 없습니다',0,0,null,null,null,null,null);


INSERT INTO post VALUES(00,1,'admin',00,0,'공지사항 제목입니다',null,sysdate,'공지사항내용입니다',0,null,null,null,null,null,null);
INSERT INTO post VALUES(00,2,'admin',00,0,'공지사항 제목2입니다',null,sysdate,'공지사항내용2입니다',0,null,null,null,null,null,null);


SELECT *
		FROM pmcjoin
		WHERE bid = 2
		AND	  pnum = 1;
    
DELETE 
FROM post
WHERE bid = 2 
AND pnum = 14;

UPDATE post
		SET ctcode=3, pstatus=3, pprice=333, pimg1='당근기본이미지.png', pimg2=null, pimg3=null, pimg4=null, pimg5=null, = #{}
		WHERE bid = 2
		AND pnum=16;
