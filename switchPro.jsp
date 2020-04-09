<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); 
		String list = request.getParameter("list");
		
		String URL="";
		switch(list){
			case "JDK":
				URL = "http://www.oracle.com";
				
				break;
			case "Tomcat":
				URL = "http://apache.org";
			
				break;
			case "Eclipse":
				URL = "http://eclipse.org";
			
				break;
		}
		response.sendRedirect(URL);
		
		
	%>
	

</body>
</html>
