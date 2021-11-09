<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>

			
			<link rel="stylesheet" href="/resources/css/mList.css">

            <div class="row2">
                <h2 class="joinTitle">MY BOOK</h2>
                <table border = "1">
                    <tr><td>id</td><td>name</td><td>email</td></tr>
                    <c:forEach items="${mlist}" var="list">
                        <tr>
                            <td>${list.id}</td>
                            <td><a href="/member/mDetail?id=${list.id}">${list.name}</a></td>
                            <td>${list.email}</td>
                        </tr>
                    </c:forEach>
                </table>
                
            </div>

            
        </div> <!--#container-->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>