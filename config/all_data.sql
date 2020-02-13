CREATE DATABASE  IF NOT EXISTS `book_shelf`;
USE `book_shelf`;

SET NAMES utf8 ;

DROP TABLE IF EXISTS `all_data`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `all_data` (
  `book_value` int(11) NOT NULL auto_increment,
  `RFID_value` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `writer` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `QoB` int(11) NOT NULL,
  `QoB_state` int(11) NOT NULL,
  `img_src` varchar(200) DEFAULT NULL,
  `img_source` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`book_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `all_data` WRITE;
INSERT INTO `all_data` VALUES 	
(1, ' 4 47 220 130 193 99 129','닷넷 프로그래밍 정복','김상형','가메출판사',1,1,'닷넷 프로그래밍 정복.jpg', 'https://book.naver.com/bookdb/book_detail.nhn?bid=4508079&sug=thumb'),
(2, ' 4 58 220 130 193 99 129','C++ 기초플러스','이도희','성안당',1,1,'C++ 기초플러스.jpg', 'https://www.cyber.co.kr/shop/goods/goods_view.php?&goodsno=30'),
(3, ' 4 67 220 130 193 99 129','Visual C++ 완벽가이드 2nd Edition','김용성','영진닷컴',1,1,'Visual C++ 완벽가이드 2nd Edition.jpg', 'http://www.kangcom.com/sub/view.asp?sku=200401310006'),
(4, ' 4 77 220 130 193 99 129','Fno 아두이노 응용 프로그래밍','김우성','정일출판사',1,1,'Fno 아두이노 응용 프로그래밍.jpg', 'http://book.interpark.com/product/BookDisplay.do?_method=detail&sc.prdNo=251288730'),
(5, ' 4 86 220 130 193 99 129','TOEIC Test LC 공식실전서 1000','이동현','YBM',1,1,'TOEIC Test LC 공식실전서 1000.jpg', 'http://www.yes24.com/Product/Goods/14715263'),
(6, ' 4 95 220 130 193 99 129','The Art of Project Management 마음을 움직이는 프로젝트 관리','스콧 버쿤','한빛미디어',1,1,'The Art of Project Management 마음을 움직이는 프로젝트 관리.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B2422494467'),
(7, ' 4 87 221 130 193 99 129','Java Programming with a Workbook','황종선','이한출판사',1,1,'Java Programming with a Workbook.jpg', 'https://www.aladin.co.kr/m/mproduct.aspx?ItemId=184457365'),
(8, ' 4 201 237 130 193 99 128','C++ Standard Library 튜토리얼 레퍼런스','니콜라이 M. 조슈티스','인포북',1,1,'C++ Standard Library 튜토리얼 레퍼런스.jpg', 'http://www.yes24.com/Product/Goods/2501549'),
(9,' 4 164 237 130 193 99 128','UNIX 시스템 프로그래밍 Second Edition','KEITH HAVILAND','홍릉과학출판사',1,1,'UNIX 시스템 프로그래밍 Second Edition.jpg', 'http://www.hongpub.co.kr/sub.php?goPage=view_product&flashpage=&Code=20090223152529'),
(10, ' 4 146 236 130 193 99 128','리눅스 완벽 가이드 : 데스크탑, 서버, 보안, 개발 환경','하태균','한빛미디어',1,1,'리눅스 완벽 가이드 데스크탑, 서버, 보안, 개발 환경.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B8928564866'),
(11, ' 4 50 253 98 152 101 129','모바일 플랫폼 천하통일 위피프로그래밍','강상원','제우미디어',1,1,'모바일 플랫폼 천하통일 위피프로그래밍.jpg', 'https://www.jeumedia.com/shop/wifiprogramming/'),
(12, ' 4 192 237 130 193 99 128','인공지능 개념 및 응용 Artificial Intelligence - Concept and Application','도용태','희중당',1,1,'인공지능 개념 및 응용 Artificial Intelligence - Concept and Application.jpg', 'https://books.google.co.kr/books?id=ObVHMwAACAAJ&source=gbs_book_other_versions'),
(13, ' 4 183 237 130 193 99 128','RTA & X-Internet Programming with MiPlatform','투비소프트 교육지원사업부','모자이크커뮤니케이션㈜',1,1,'RTA & X-Internet Programming with MiPlatform.jpg', 'https://book.naver.com/bookdb/text_view.nhn?bid=3121576#'),
(14, ' 4 129 198 98 152 101 128','Windows 2000 디바이스 드라이버','아트 베이커','인포북',1,1,'Windows 2000 디바이스 드라이버.jpg', 'http://www.yes24.com/Product/Goods/1372182?scode=029'),
(15, ' 4 114 225 130 193 99 128','OpenCV 제대로 배우기','개리 로스트 브라드스키','한빛미디어',1,1,'OpenCV 제대로 배우기.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B8471197783'),
(16, ' 4 123 225 130 193 99 128','소프트웨어공학 4차 개정판','최은만','정익사',1,1,'소프트웨어공학 4차 개정판.jpg', 'http://www.kangcom.com/sub/view.asp?sku=200801100004'),
(17, ' 4 167 205 90 211 99 128','생각하며 배우는 C++','이현창','한빛미디어',1,1,'생각하며 배우는 C++.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B5348002982'),
(18, ' 4 163 205 90 211 99 128','C프로그래밍으로 가는 여행 Thinking Diary','권은경','ITC',1,1,'C프로그래밍으로 가는 여행 Thinking Diary.jpg', 'https://www.coupang.com/vp/products/69090596?itemId=231117636&vendorItemId=3564284953&src=1042503&spec=10304968&addtag=400&ctag=69090596&lptag=GOOGLE_SHOPPING&itime=20191010171049&pageType=PRODUCT&pageValue=69090596&wPcid=3551137100508286957599&wRef=&wTime=20191010171049&redirect=landing&isAddedCart='),
(19, ' 4 151 225 130 193 99 128','C# 프로그래밍','윤인성','한빛아카데미',1,1,'C sharp programming.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B9631695335'),
(20, ' 4 162 225 130 193 99 128','ARM System Developer`s Guide','Andrew N. Sloss','사이텍 미디어',1,1,'ARM System Developer`s Guide.jpg', 'https://www.amazon.com/ARM-System-Developers-Guide-Architecture/dp/1558608745'),
(21, ' 4 171 225 130 193 99 128','데이터 통신의 이해','정진욱','생능출판사',1,1,'데이터 통신의 이해.jpg', 'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=330129&barcode=9788970505886'),
(22, ' 4 180 225 130 193 99 128','Step by Step 안드로이드 프로그래밍','장용식','인피니티북스',1,1,'Step by Step 안드로이드 프로그래밍.jpg', 'http://www.yes24.com/Product/Goods/7154144'),
(23, ' 4 189 225 130 193 99 128','안드로이드 프로그래밍 정복2 Android Programming Complete Guide 개정판','김상형','한빛미디어',1,1,'안드로이드 프로그래밍 정복2 Android Programming Complete Guide 개정판.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B7551769607'),
(24, ' 4 198 225 130 193 99 128','임베디드 리눅스 구조 및 응용','노성동','GS인터비전',1,1,'임베디드 리눅스 구조 및 응용.jpg', 'http://item.gmarket.co.kr/Item?goodscode=186196533'),
(25, ' 4 111 198 98 152 101 128','실무에 강해지는 모바일 자바 프로그래밍 J2ME','양성수','혜지원',1,1,'실무에 강해지는 모바일 자바 프로그래밍 J2ME.jpg', 'http://www.yes24.com/Product/goods/305177?pid=150931'),
(26, ' 4 201 251 98 152 101 128','알기 쉽게 해설한 C++','Herbert Schildt','이한출판사',1,1,'알기 쉽게 해설한 C++.jpg', 'http://www.yes24.com/Product/goods/55084269'),
(27, ' 4 210 251 98 152 101 128','C로 배우는 쉬운 자료구조','이지영','한빛미디어',1,1,'C로 배우는 쉬운 자료구조.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B8724646510'),
(28, ' 4 219 251 98 152 101 128','Programming Challenges 알고리즘 트레이닝 북','스티븐 스키에나','한빛미디어',1,1,'Programming Challenges 알고리즘 트레이닝 북.jpg', 'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=502632'),
(29, ' 4 228 251 98 152 101 128','데이타베이스론','이석호','정익사',1,1,'데이타베이스론.jpg', 'http://itempage3.auction.co.kr/DetailView.aspx?itemno=B258376719'),
(30, ' 4 237 251 98 152 101 128','JavaScript Patterns','스토안 스테파노프','oreilly',1,1,'JavaScript Patterns.jpg', 'http://shop.oreilly.com/product/9780596806767.do'),
(31, ' 4 120 198 98 152 101 128','진짜 쉽고 쓸모 있는 언어 파이썬','안진섭','성안당',1,1,'진짜 쉽고 쓸모 있는 언어 파이썬.jpg', 'http://emart.ssg.com/item/itemView.ssg?itemId=1000019464154&siteNo=6001&salestrNo=6005'),
(32, ' 4 255 251 98 152 101 128','비주얼 디버깅으로 배우는 C언어','김기순','엔트미디어',1,1,'비주얼 디버깅으로 배우는 C언어.jpg', 'http://item.gmarket.co.kr/Item?goodscode=1163700774'),
(33, ' 4 08 251 98 152 101 129','2015 시나공 기출문제집 컴퓨터활용능력 1급필기','강윤석','길벗',1,1,'2015 시나공 기출문제집 컴퓨터활용능력 1급필기.jpg', 'http://www.yes24.com/Product/Goods/15292793'),
(34, ' 4 17 251 98 152 101 129','하이브리드 아이폰 애플리케이션 개발','리 바니','에이콘',1,1,'하이브리드 아이폰 애플리케이션 개발.jpg', 'http://www.yes24.com/Product/Goods/3669912'),
(35, ' 4 26 251 98 152 101 129','리눅스 프로그래밍 기초','최태영','한빛아카데미',1,1,'리눅스 프로그래밍 기초.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B4708665162'),
(36, ' 4 35 251 98 152 101 129','C언어 정복 리얼 교과서','이상진','프리렉',1,1,'C언어 정복 리얼 교과서.jpg', 'https://freelec.co.kr/book/%EB%8F%85%EC%9E%90%EC%99%80-%EB%8F%99%ED%96%89%ED%95%98%EB%A9%B0-c-%EC%96%B8%EC%96%B4%EB%A5%BC-%EC%A0%95%EB%B3%B5%ED%95%98%EC%9E%90/'),
(37, ' 4 44 251 98 152 101 129','Head First C#','엔드류 스텔만','한빛미디어',1,1,'Head First C sharp.jpg', 'http://shop.oreilly.com/product/0636920027812.do'),
(38, ' 4 54 252 98 152 101 129','시작하세요! 모바일 웹 개발','박종명','위키북스',1,1,'시작하세요! 모바일 웹 개발.jpg', 'https://wikibook.co.kr/beginning-mobile-web-development/'),
(39, ' 4 64 252 98 152 101 129','만들면서 배우는 OS 커널의 구조와 원리','김범준','한빛미디어',1,1,'만들면서 배우는 OS 커널의 구조와 원리.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B1271180320'),
(40, ' 4 68 253 98 152 101 129','위피 모바일 프로그래밍','박수원','한빛미디어',1,1,'위피 모바일 프로그래밍.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B6184256535'),
(41, ' 4 59 253 98 152 101 129','모바일프로그래밍을 위한 wipi','이상부','연학사',1,1,'모바일프로그래밍을 위한 wipi.jpg', 'http://www.yes24.com/Product/Goods/1525811?scode=029'),
(42, ' 4 137 236 130 193 99 128','안드로이드 프로그래밍 정복 Android Programming Complete Guide','김상형','한빛미디어',1,1,'안드로이드 프로그래밍 정복 Android Programming Complete Guide.jpg', 'http://www.yes24.com/Product/Goods/3796974'),
(43, ' 4 176 251 98 152 101 128','우분투 리눅스 시스템 & 네트워크','이종원','한빛아카데미',1,1,'우분투 리눅스 시스템 & 네트워크.jpg', 'http://www.hanbit.co.kr/store/books/look.php?p_code=B3786476219'),
(44, ' 4 108 252 98 152 101 128','예제 중심의 실전 XML','이언배','이한출판사',1,1,'예제 중심의 실전 XML.jpg', 'http://www.yes24.com/Product/Goods/2143290?scode=029'),
(45, ' 4 117 252 98 152 101 128','JSP Professional','이동훈','가메출판사',1,1,'JSP Professional.jpg', 'http://www.yes24.com/Product/Goods/209076'),
(46, ' 4 126 252 98 152 101 128','ASP와 XML을 활용한 차세대 웹 프로그래밍','손진곤','이한디지털리',1,1,'ASP와 XML을 활용한 차세대 웹 프로그래밍.jpg', 'http://www.yes24.com/Product/Goods/214719?scode=032&ozsrank=8'),
(47, ' 4 135 252 98 152 101 128','네트워크 개론과 실습','조영일','한빛미디어',1,1,'네트워크 개론과 실습.jpg', 'http://www.yes24.com/Product/Goods/423971?scode=032&OzSrank=2'),
(48, ' 4 153 252 98 152 101 128','내가 행복해지는 거절의 힘','마누엘 스미스','이다미디어',1,1,'내가 행복해지는 거절의 힘.jpg', 'http://www.yes24.com/Product/Goods/7524831?scode=029'),
(49, ' 4 192 251 98 152 101 128','누구나 쉽게 즐기는 C언어 콘서트','천인국','생능출판사',1,1,'누구나 쉽게 즐기는 C언어 콘서트.jpg', 'http://www.yes24.com/Product/Goods/3900759');
UNLOCK TABLES;