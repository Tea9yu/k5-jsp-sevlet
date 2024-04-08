<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// http://localhost:8080/MustHaveJSP/Mission/gugudan1.jsp?dan=3

	String param = request.getParameter("dan");

	int dan = 2;
	if (param != null)
		dan = Integer.parseInt(param);
	
%>
<!DOCTYPE html>
<html>
<head><title>구구단 출력 Type1</title></head>
<body>
	<h2>구구단 출력</h2>
	<%
// 		request.setCharacterEncoding("UTF-8");
	
// 		int dan = Integer.parseInt(request.getParameter("dan"));
	
// 	String snum = request.getParameter("dan");
// 	int dan = 2;
// 	if (snum != null) {
// 		dan = Integer.parseInt(snum);
// 	}	
	%>
	
	<h2><%= dan %>단입니다.</h2>
	
	<% 
	for (int i = 1; i < 10; i++) {
	%>
		<li><%=dan %> * <%=i %> = <%=dan*i %></li>
	<%
	}
	%>
	
</body>
</html>