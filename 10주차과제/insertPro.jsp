<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
	//연결정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	
	//1.드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 연결 객체 생성
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3. SQL 준비 
	String sql = "INSERT INTO BOARD VALUES(SEQ_ID.NEXTVAL,?,?,?, sysdate)";
	PreparedStatement pst = con.prepareStatement(sql);

	pst.setString(1, request.getParameter("subject"));
	pst.setString(2, request.getParameter("content"));
	pst.setString(3, request.getParameter("writer"));
	
	//4. SQL 실행
	pst.executeUpdate();
	
	//5. 객체 해제
	pst.close();
	con.close();
	
	response.sendRedirect("list.jsp");
%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>