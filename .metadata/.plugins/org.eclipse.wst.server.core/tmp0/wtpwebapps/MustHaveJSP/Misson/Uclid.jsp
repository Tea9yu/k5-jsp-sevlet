<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유클리드 호제법</title>
<style>
	div#uclid {
		whidth:300px; height:100px;
	}
	form{
		position: relative; top:0px; width:270px; 
		border:1px solid gray; padding:10px;
	}
</style>
</head>
<body>
	<h2>유클리드 호제법</h2>	
	<div id="uclid">
	<form action="UclidProcess.jsp" method="post">
	<div align="right">
	숫자1 입력: <input type="text" name="num1" />
	<br />
	숫자2 입력: <input type="text" name="num2" />
	<br />
	최대공약수: <input type="text" name="GCD" />
	<br />
	최소공배수: <input type="text" name="LCM" />	
	<br />
	<input type="submit" value="실행" />
	</div></form>
	</div>
</body>
</html>