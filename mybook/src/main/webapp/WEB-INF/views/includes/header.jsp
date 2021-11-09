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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="/resources/css/home.css" type="text/css">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    <script type="text/javascript" src="/resources/js/list.js"></script>
    <script type="text/javascript" src="/resources/js/reply.js"></script>
    
</head>
<body>
    
    <div id="wrap">
        <header id="header">
            <div class="headerIn">
                <h1 class="logo"><a href="/"><img src="/resources/img/logo_transparent.png" alt="MYBOOK"></a></h1>
                <nav class="gnb">
                    <ul>
                        <li><a href="#">MY BOOK</a></li>
                        <li><a href="#">MY CLASSROOM</a></li>
                        <li><a href="#">RESERVATION</a></li>
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

        <div id="container">

            <section class="row1">
                <div class="row1Img"></div>
            </section> <!--.section1-->
