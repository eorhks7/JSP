<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>201312363_김대관</title>
		<link rel='stylesheet' href='template.oss'>
</head>
<style>
	body{
		background-color:skyblue;
	}
	
	header{
		border:pink 3px solid; height:20%; position:relative;
	}
	
	#content{
		margin:10px 9px 50px; height:65%; background-color:yellow;
	}
	
	#areaMain{
		position:relative; float:right; padding:10px 0;
		border:purple 3px solid; width: 75%; height:80%;
		text-align: center; 
	}
	
	#areaSub{
		border:green 3px solid; width:20%; float:left;
	}
	footer{
		border:yellow 3px dotted; clear:both; height:30%;
	}
</style>
<body>
	<header>
		<jsp:include page="top.jsp"/>
	</header>
	<hr>
	<div id="contetn">
		<section id='areaSub'>
			<jsp:include page="left.jsp" flush="false"/>
		</section>
		
		<section id='areaMain'>
			<jsp:include page="content.jsp" flush="false"/>
		</section>
	</div>

	<footer>
		<jsp:include page="bot.jsp" flush="false"/>
	</footer>
</body>
</html>