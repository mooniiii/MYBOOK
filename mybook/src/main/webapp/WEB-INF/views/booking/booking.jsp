<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	<!--  jstl -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- date -->

<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<link rel="stylesheet" href="/resources/css/list.css" type="text/css">

   		<div class="booking">
   		
	   		<form action="bookingPost" method="post">
		   		<table border = "1">
		   			<tr>
		   				<td><input type="button" value="seat"><td>
		   			</tr>
		   		</table>
	   		</form>
   		
   		</div>
   		
   		

                    
        </div><!-- #container -->
    
	<%@ include file="/WEB-INF/views/includes/footer.jsp" %>