<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>


			<link rel="stylesheet" href="/resources/css/write.css">


            <div class="row2">
                <h2 class="joinTitle">MY BOOK</h2>
                <form action="/member/writePost" method="post" id="joinForm">
                    <!-- 아이디입력 -->
                    <div class="joinRow">
                        <h3 class="joinTab">
                            <label for="id">아이디</label>
                        </h3>
                        <div class="idBox">
                            <span class="box idLeft">
                                <input type="text" id="id" name="id" class="uInput" maxlength="20" placeholder="영문소문자와 숫자로 된 5~20자의 아이디">
                            </span>
                            <span class="idRight">
                                <input type="button" id="overlapCheckBtn" value="중복확인">
                            </span>
                        </div>
                    </div>
                    <!-- 비밀번호 입력 -->
                    <div class="joinRow">
                        <h3 class="joinTab">
                            <label for="pw1">비밀번호</label>
                        </h3>
                        <span class="box">
                            <input type="password" id="pw1" name="pw" class="uInput" maxlength="20" placeholder="영문소문자, 숫자, 특수문자가 각각 사용된 8~16자의 비밀번호">
                        </span>
                    </div>
                    <!-- 비밀번호 재확인 -->
                    <div class="joinRow">
                        <h3 class="joinTab">
                            <label for="pw2">비밀번호 재확인</label>
                        </h3>
                        <span class="box">
                            <input type="password" id="pw2" name="pw2" class="uInput" maxlength="20">
                        </span>
                    </div>
                    <!-- 이름 -->
                    <div class="joinRow">
                        <h3 class="joinTab">
                            <label for="name">이름</label>
                        </h3>
                        <span class="box">
                            <input type="text" id="name" name="name" class="uInput" maxlength="40">
                        </span>
                    </div>
                    
                    <!-- 이메일 입력 -->
                    <div class="joinRow">
                        <h3 class="joinTab">
                            <label for="eamil">이메일</label>
                        </h3>
                        <div class="box">
                            <input type="email" id="email" name="email" class="uInput" maxlength="100">
                        </div>
                    </div>
                    <!-- 휴대전화 -->
                    <div class="joinRow">
                        <h3 class="joinTab">
                            휴대전화
                        </h3>
                        <span class="box">
                            <input type="text" class="uInput" id="mobile" name="tel" placeholder="'-'를 제외한 숫자만 입력" maxlength="11">
                        </span>
                    </div>
                    <!-- 가입하기 버튼 -->
                    <div class="btnArea">
                        <div class="joinBtn">
                            <input type="submit" class="btn" value="가입하기" id="submitBtn">
							<input type="reset" class="btn" value="취소" id="submitBtn">                   
                        </div>
                    </div>
                </form> <!-- .join_form -->
                </div> <!-- .row2 -->
            </div>

            
        </div> <!--#container-->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>