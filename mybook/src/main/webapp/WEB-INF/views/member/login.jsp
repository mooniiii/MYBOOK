<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>


		<link rel="stylesheet" href="/resources/css/login.css">



			<div class="row2">
				<div class="login">
					<h2 class="joinTitle">MY BOOK</h2>
					<form action="loginPost" method="post">
						<div class="loginIn">
							<div>
								<div class="loginBox box1">
									<label>아이디</label>
									<input type="text" name="id">
								</div>
								
								<div class="loginBox box2">
									<label>비밀번호</label>
									<input type="password" name="pw">
								</div>
							</div>
							<input type="submit" value="로그인" class="loginBtn">
						</div>
					</form>
				</div> <!-- .loginBox -->
			</div> <!-- .row2 -->

            
        </div> <!--#container-->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>