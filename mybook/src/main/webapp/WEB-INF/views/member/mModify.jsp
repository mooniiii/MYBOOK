<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>


			<link rel="stylesheet" href="/resources/css/mModify.css">


            <div class="row2">
                <h2 class="joinTitle">MY BOOK</h2>
                <form action="mModifyPost" id="joinForm" method="post">
	                <!-- 아이디입력 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="id">아이디</label>
	                    </h3>
	                    <div class="box">
	                            ${modify.id}<input type="hidden" name="id" value="${modify.id}">
	                    </div>
	                </div>
	                <!-- 비밀번호 입력 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="pw1">비밀번호</label>
	                    </h3>
	                    <span class="box">
	                        <input type="text" id="pw1" name="pw" class="uInput" maxlength="20" value="${modify.pw}">
	                    </span>
	                </div>
	                <!-- 이름 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="name">이름</label>
	                    </h3>
	                    <span class="box">
	                        <input type="text" id="name" name="name" class="uInput" maxlength="40" value="${modify.name}">
	                    </span>
	                </div>
	                
	                <!-- 이메일 입력 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="eamil">이메일</label>
	                    </h3>
	                    <div class="box">
	                        <input type="text" id="email" name="email" class="uInput" maxlength="100" value="${modify.email}">
	                    </div>
	                </div>
	                <!-- 휴대전화 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        휴대전화
	                    </h3>
	                    <span class="box">
	                        <input type="text" class="uInput" id="mobile" name="tel" maxlength="11" value ="${modify.tel}">
	                    </span>
	                </div>
	                <div class="btn">
	                	<input type="submit" value="수정">
	                </div>
                </form> <!-- .join_form -->
                </div> <!-- .row2 -->
            </div>

            
        </div> <!--#container-->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>