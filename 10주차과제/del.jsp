<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//연결정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	
	//1.드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 연결 객체 생성
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3. SQL 준비 및 실행
	String sql = "SELECT * FROM BOARD";
	Statement st = con.createStatement();
	
	//4.반환 객체
	ResultSet rs = st.executeQuery(sql);
	

%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title></title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
	
</head>
<body>
<div class="container">
<h1  class="text-center font-weight-bold">게시글 삭제</h1><br><br>
	<table class = "table table-hover">
		<tr>
			<th>아이디</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성시간</th>
		</tr>
<% 
	while(rs.next()){
		String id = rs.getString("ID");
		String subject = rs.getString("SUBJECT");
		String content = rs.getString("CONTENT");
		String writer = rs.getString("WRITER");
		String regdate = rs.getString("REGDATE");
%>
		
		
		<tr>
			<td><%=id %></td>
			<td><%=subject %></td>
			<td><%=content %></td>
			<td><%=writer %></td>
			<td><%=regdate %></td>
		</tr>
<%	} 

//연결해제
rs.close();
st.close();
con.close();

%>
		
	</table>
</div>

<div align="center">
<form action="delPro.jsp" method="post">

	
		 <br><br>삭제 할 아이디를 입력 후 삭제 버튼을 눌러주세요<br><br>
	  <input type="text" name="id">
  
		 <input type="submit" value="삭제" onclick="alert('삭제되었습니다!')">
</form>
		<br> <button onclick="location.href='index.jsp'">돌아가기 </button>
		 

	</div>
</body>
</html>