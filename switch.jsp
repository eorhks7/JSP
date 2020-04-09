<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<h2>JSP 환경 설정을 위한 당누로드 페이지</h2>
	<form action="switchPro.jsp" method="post">
		<select name="list">
			<option value="JDK">JDK</option>
			<option value="Tomcat">Tomcat</option>
			<option value="Eclipse">Eclipse</option>
		</select>
		<input type="submit" value="이동">
	
	</form>
	
</body>
</html>