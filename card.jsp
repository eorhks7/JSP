<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table{border :1px dotted black; border-collapse: collapse;
	width:50%;}
	#a 
		{padding:8px; background-color:SlateBlue; 
		color:yellow; text-align: center;}
	td{border:1px dotted black; }
</style>
	<meta charset="UTF-8">
	<title>201312363_김대관</title>
</head>
<body>
<h2>개인면담 카드</h2>
<hr>

	<form action="check.jsp" method="post">
	<table>

		<tr>
		<td id="a">소속</td>
		<td >
		<input type="text" name="dept" size="20">
		</td>
		</tr>
		
		<tr>		
		<td id="a">성명</td>
		<td>
		<input type="text" name="name" size="20">
		</td>
		</tr>
		
		<tr>
		<td id="a">현주소</td>
		<td>
		<input type="text" name="addr" size="20">
		</td>
		</tr>
		
		<tr>
		<td id="a">입사년월일</td>
		<td>
		<input type="text" name="startDate" size="20" placeholder="연도-월-일">
		</td>
		</tr>
		
		<tr>
		<td id="a">최종학력</td>
		<td>	
		<input type="radio" name="levelofedu" value="중졸">중졸 &nbsp;
		<input type="radio" name="levelofedu" value="고졸">고졸 &nbsp;
		<input type="radio" name="levelofedu" value="전문대졸">전문대졸 &nbsp;
		<input type="radio" name="levelofedu" value="대졸">대졸
		</td>
		</tr>
			
		<tr>
		<td colspan="2">
		<fieldset >
		<legend>자격증</legend>
		
		<input type="checkbox" name="certificate" value="자동차2종">자동차2종 &nbsp;
		<input type="checkbox" name="certificate" value="정보처리산업기사">정보처리산업기사 &nbsp;
		<input type="checkbox" name="certificate" value="컴퓨터활용">컴퓨터활용 &nbsp;
		<input type="checkbox" name="certificate" value="기타">기타 &nbsp;
		</td>
		</fieldset>
		</tr>
		
		<tr>
			<td id="a">상담내용</td>
			<td>
				<textarea name="content" cols="60" rows="10"></textarea>
			</td>
		</tr>
		 		
		<tr>
		<td style="text-align:center"; colspan="2" >
				<input type ="submit" value="입력완료">
				<input type ="reset" value ="다시입력">
		</td>
 		</tr>	
		</form>	
	</table>
	
</body>
</html>