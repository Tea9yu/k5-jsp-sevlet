<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// http://localhost:8080/MustHaveJSP/Mission/gugudan2.jsp?col=3

	String param = request.getParameter("col");
	
	int col = 9;
	if (param != null)
		col = Integer.parseInt(param);
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력 Type2</title>
</head>
<body>
	<h2>구구단 출력</h2>
	
	<ul>
	<%
	for (int i = 1; i < 10; i++) {
	%>	
	<h2><%= i %>단입니다.</h2>	
	<%			
	for (int j = 1; j < 10; j++) {
	%>
	<li><%= i %> * <%= j  %> = <%= i*j %></li>
	<%
		if (j % col == 0) {	
	%>
	</ul>
	
	<ul>	
	<%
		}
	}
	}	
	%>
	</ul>
</body>
</html>