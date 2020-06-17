<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<h2 align="center">게시글 수정</h2><br>
<div align="center">
<form action="upDatePro.jsp" method="post">
<table border="1">
	<tr>
		<td colspan="2"> 수정 할 아이디를 입력 후 <br>내용을 입력하여 완성하여 주십시오</td>
	</tr>
	<tr>
      <td>ID :</td>
      <td> <input type="text" name="id"></td>
   </tr>
	<tr>
		<td>SUBJECT :</td>
		<td><input type="text" name="subject"></td>
	</tr> 
	<tr>
		<td>CONTENT : </td>
		<td><textarea name="content" rows="10" cols="30"></textarea></td>
	</tr>
	<tr>
		<td>WRITER : </td>
		<td><input type="text" name="writer"></td>
		</tr>
		<tr>
		 <td colspan="2" align="center">
		 <input type="submit" value="입력완료">
		 <input type="reset" value="다시작성">
		 </td>
		</tr>
	
	</table>
</form>
	</div>
</body>
</html>