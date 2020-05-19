<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		response.sendRedirect(a); //URL을 response해야 하나 a를 넣어 문법상 오류가 있게하여 500에러를 발생시켰습니다.
		
		
	%>
</body>
</html>