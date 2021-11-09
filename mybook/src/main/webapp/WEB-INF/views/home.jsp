<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY BOOK</title>
    <link rel="shortcut icon" href="#">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/home.css">
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="headerIn">
                <h1 class="logo"><a href="/"><img src="/resources/img/logo_transparent.png" alt="MYBOOK"></a></h1>
                <nav class="gnb">
                    <!--웹표준 권고사항 : 메뉴는 최대 7개-->
                    <ul>
                        <li><a href="#">MY BOOK</a></li>
                        <li><a href="#">MY CLASSROOM</a></li>
                        <li><a href="/booking/booking">RESERVATION</a></li>
                        <li><a href="http://localhost:8080/board/mb_notice/list">NOTICE</a></li>
                        <li><a href="http://localhost:8080/board/mb_event/list">EVENT</a></li>
                    </ul>
                </nav> <!--.gnb--> 
                <div class="util">
                    <ul>
	                	<c:choose>
							<c:when test="${aaaa.id==null}">
	                       		<li>
									<a href="/member/login">LOGIN</a>
	                       		</li>
	                       		<li>
	                           		<a href="/member/write">JOIN</a>
	                       		</li>
	                       	</c:when>
	                       
	                       	<c:otherwise>
	                       		<li>
									<a href="/member/logout">LOGOUT</a>
	                       		</li>
	                       		<li>
	                           		<a href="/member/mDetail?id=${aaaa.id}">회원정보</a>
	                       		</li>
							</c:otherwise>
						</c:choose>
                    </ul>
                </div> <!--.util-->
            </div> <!--.headerIn-->
        </header> <!--#header-->

        <div id="containger">
            <section class="row1">
                <div class="row1Img"></div>
                <div class="row1Text">
                    <p class="r1t1">자리 예약 시스템 <strong>OPEN</strong></p>
                    <p class="r1t2"><a href="">more view</a></p>
                </div>
            </section> <!--.section1-->

            

            <section class="row3">
                <div class="mainPic">
                	<img src="resources/img/row.jpeg" alt="">
                </div>
            </section> <!--.section3-->

            <section class="row4">
                <div class="vd">
                    <video src="resources/img/mybook.mov" controls muted></video>
                </div>
                <div class="vdTxt">
                    <p class="vt1">
                        <span>My Book</span>은<br>
                        최고의 서비스 품질을 제공합니다.
                    </p>
                    <p class="vt2"> 
                        my book은 고객님들께 항상 최고의 서비스를 제공합니다.<br>
                        간편하고 정확한, 그리고 안정적인 서비스로<br>
                        고객 여러분들께 감동을 선사합니다.<br>
                    </p>
                </div>
            </section> <!--.section4-->

            <section class="row5">
                <h2>INSTAGRAM</h2>
                <p class="snsTxt1">WELCOME TO MYBOOK. THE BEST RESERVATION SERVICE <span>&#35;MYBOOK</span></p>
                <p class="snsTxt2">&#64;m.___.mii</p>
                <div class="snsList">
                    <ul>
                        <li><a href="#"><img src="resources/img/hodu01.jpg" alt=""></a></li>
                        <li><a href="#"><img src="resources/img/hodu02.jpg" alt=""></a></li>
                        <li><a href="#"><img src="resources/img/hodu03.jpg" alt=""></a></li>
                        <li><a href="#"><img src="resources/img/hodu04.jpg" alt=""></a></li>
                        <li><a href="#"><img src="resources/img/hodu05.jpg" alt=""></a></li>
                        <li><a href="#"><img src="resources/img/hodu06.jpg" alt=""></a></li>
                    </ul>
                </div>
            </section> <!--.section5-->

        </div> <!--#container-->

        <footer id="footer">
            <div class="footerIn">
                <div class="fTop">
                    <div class="fLogo"><img src="resources/img/logo_transparent.png" alt="sabon"></div>
                    <div class="fCs">
                        <dl>
                            <dt>CUSTOMER CENTER</dt>
                            <dd>
                                <p class="fcTxt">
                                    (08762) 서울 관악구 남부순환로153길<br>
                                    5층<br>
                                    전화번호:1234-5678<br>
                                    팩스번호:(02)1234-5678<br>
                                    이메일:rnryans2317@naver.com<br>
                                </p>
                                <p class="fcIns">
                                	<a href="http://www.instagram.com/m.___.mii">
                                    	<img src="resources/img/icon_instagram.png" alt="인스타그램">
                                    </a>
                                </p>
                            </dd>
                        </dl>
                    </div> <!--.fCs-->
                    <div class="fMenu">
                        <dl>
                            <dt>LINK</dt>
                            <dd>
                                <p><a href="#">이용약관</a></p>
                                <p><a href="#">개인정보 취급방침</a></p>
                                <p><a href="#">이용안내</a></p>
                            </dd>
                            <dt>ACCOUNT</dt>
                            <dd>
                                <p><a href="/member/login">로그인</a></p>
                                <p><a href="/member/write">회원가입</a></p>
                            </dd>
                            <dt>PRODUCT</dt>
                            <dd>
                            	<p><a href="#">예약 프로그램</a></p>
                            </dd>
                        </dl>
                    </div> <!--.fMenu-->
                </div> <!--.fTop-->
                <div class="fBottom">
                    (주)MYBOOK
                    <span class="bar"></span>
                    (08762) 서울 관악구 남부순환로153길 1층<br>
                    <span class="bar"></span>
                    개인정보관리책임자: 구교
                    <span class="bar"></span>
                    사업자등록번호 000-00-00000 <a href="#">[사업자정보확인]</a>
                    <span class="bar"></span>
                    통신판매업 신고번호 제 2021-서울관악-0000호
                    <span class="bar"></span>
                    대표자:구교문
                </div> <!--.fBtm-->
            </div> <!--.footerIn-->
        </footer> <!--#footer-->



    </div> <!--#wrap-->
</body>
</html>