<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	<!--  jstl -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- date -->

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
    <link rel="stylesheet" href="/resources/css/read.css" type="text/css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    <script type="text/javascript" src="/resources/js/list.js"></script>
    <script type="text/javascript" src="/resources/js/reply.js"></script>
    
    <!-- Reply modal start -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
    		<div class="modal-content">
    			<div class="modal-header">
    				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    				<h4 class="modal-title" id="myModalLabel">Reply Modal</h4>
    			</div>
    			<div class="modal-body">
    				<div class="form-group">
    					<label>Reply</label>
    					<input class="form-control" name="reply" value="New Reply!!!">
    				</div>
    				<div class="form-group">
    					<label>Replyer</label>
    					<input class="form-control" name="id" value="replyer">
    				</div>
    				<div class="form-group">
    					<label>Reply Date</label>
    					<input class="form-control" name="replyDate" value="">
    				</div>
    			</div> 
    			<div class="modal-footer">
	    			<button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>
	    			<button id="modalRemoveBtn" type="button" class="btn btn-danger" data-dismiss="modal">Remove</button>
	    			<button id="modalRegisterBtn" type="button" class="btn btn-default" data-dismiss="modal">Register</button>
	    			<button id="modalCloseBtn" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    			</div>
    		</div>
    	</div>
    </div>
    
    
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




			<div class="read">
                <h2><a href="/board/mb_notice/list">NOTICE</a></h2>
              	<div class="readIn">
              		<input type="hidden" value="${read.bno}" id="bno">
                    <h3>${read.title}</h3>
                    <p class="writer"><a href="#">${read.id}</a></p>
                    <p class="content">${read.content}</p>
                    <div class="readBtn">
                        <c:choose>
							<c:when test="${read.id eq aaaa.id}">
								<button class="readModifyBtn"><a href="/board/mb_notice/modify?bno=${read.bno}">수정하기</a></button>
								<button class="readDeleteBtn"><a href="/board/mb_notice/remove?bno=${read.bno}">삭제하기</a></button>
	                       	</c:when>
	                       
	                       	<c:otherwise>
							</c:otherwise>
						</c:choose>
                    </div>
                </div> <!-- .readIn -->
            </div> <!-- .read-->
	
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-comments fa-fw"></i> Reply
					<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">댓글쓰기</button>
					<!-- button에 어떠한 동작을 주고싶으면 무조건 js에서 notice 써야 함 (input과 다름) -->
				</div> <!-- .panel-heading -->
				
				<div class="panel-body">
					<ul class="chat">

					</ul> <!-- .chat -->
				</div> <!-- .panel-body -->
				<div class="panel-footer">
				
				</div>
				
				
			</div> <!-- .panel .panel-default -->
		</div>	<!-- .col-lg-12 -->
	</div> <!-- .row -->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>