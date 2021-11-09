<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPost</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	ResultSet rs = null;
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		String sql = "select id, pw from mb_member where id=? and pw=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
		out.println("<h3>연결 성공하였습니다.</h3>");
	} catch (Exception e) {
		out.println("<h3>연결 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>



</body>
</html>