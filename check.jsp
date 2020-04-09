<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<style>
	table{border :1px dotted black; border-collapse: collapse;
	width:50%;  }
	th{}
	td,th{padding:8px; border:1px dotted black;}
</style>
<body>
<%

	request.setCharacterEncoding("utf-8");
	String dept = request.getParameter("dept");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String startDate = request.getParameter("startDate");
	String levelofedu = request.getParameter("levelofedu");
	
	String content = request.getParameter("content");

%>
	<h2>사용자 입력 확인</h2>
	
	<table>
		<tr>
			<th style="text-align: center; width:30%;" >
				컨트롤 요소
			</th>
			<th style="text-align: center;">
				입력값
			</th>
		<tr>
			<td style="width:30%;" >
				소속
			</td>
			<td>
					<%=dept %>
			</td>
		</tr>
		
		<tr>
			<td style="width:30%;">
				성명
			</td>
			<td>
					<%=name %>
			</td>
		</tr>
		
		<tr>
			<td style="width:30%;">
				현주소
			</td>
			<td>
					<%=addr %>
			</td>
		</tr>
		
		<tr>
			<td style="width:30%;">
				입사년월일
			</td>
			<td>
					<%=startDate %>
			</td>
		</tr>
		
		<tr>
			<td style="width:30%;">
				학력
			</td>
			<td>
					<%=levelofedu %>
			</td>
		</tr>
		
		<tr>
			<td style="width:30%;">
				자격증
			</td>
			<td>
					<%
				String[] certificate = request.getParameterValues("certificate");
				for(int i=0; i<certificate.length; i++){
					out.println(certificate[i] + " "); 
				}
				
				
				%>
			
			</td>
		</tr>
		
		<tr>
			<td style="width:30%;">
				상담내용
			</td>
			<td>
					<%=content %>
			</td>
		</tr>
		
		<tr>
			<td style="width:30%;">
				각 폼의 컨트롤의 이름들
			</td>
			<td>
			<%
		Enumeration<String> en = request.getParameterNames();
		String parameterName="";
		
		
		while(en.hasMoreElements()){
			parameterName = en.nextElement();
		
			
			out.println(parameterName);
		}
	%>
			</td>
		</tr>
		
	</table>
	
	
</body>
</html>