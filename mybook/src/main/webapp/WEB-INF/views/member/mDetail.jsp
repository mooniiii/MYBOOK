<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>
			
			
			<link rel="stylesheet" href="/resources/css/mDetail.css">
    		<script type="text/javascript" src="/resources/js/mDetail.js"></script>

            <div class="row2">
                <h2 class="joinTitle">MY BOOK</h2>
                <form id="joinForm" name="frm">
	                <!-- 아이디입력 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="id">아이디</label>
	                    </h3>
	                    <div class="box">
	                            <p id="id" name="id" class="uInput">${mdetail.id}</p><input type="hidden" name="id" value="${mdetail.id}">
	                    </div>
	                </div>
	                <!-- 비밀번호 입력 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="pw1">비밀번호</label>
	                    </h3>
	                    <span class="box">
	                        <p id="pw1" name="pw" class="uInput" maxlength="20">${mdetail.pw}</p>
	                    </span>
	                </div>
	                <!-- 이름 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="name">이름</label>
	                    </h3>
	                    <span class="box">
	                        <p id="name" name="name" class="uInput" maxlength="40">${mdetail.name}</p>
	                    </span>
	                </div>
	                
	                <!-- 이메일 입력 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        <label for="eamil">이메일</label>
	                    </h3>
	                    <div class="box">
	                        <p id="email" name="email" class="uInput" maxlength="100">${mdetail.email}</p>
	                    </div>
	                </div>
	                <!-- 휴대전화 -->
	                <div class="joinRow">
	                    <h3 class="joinTab">
	                        휴대전화
	                    </h3>
	                    <span class="box">
	                        <p class="uInput" id="mobile" placeholder="'-'를 제외한 숫자만 입력" maxlength="11">${mdetail.tel}</p>
	                    </span>
	                </div>
	                <div class="btn">
	                	<input type="submit" value="수정" onclick="btn_click('modify')">
	                	<input type="submit" value="탈퇴하기" onclick="btn_click('remove')">
	                </div>
                </form> <!-- .join_form -->
                </div> <!-- .row2 -->
            </div>

            
        </div> <!--#container-->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>