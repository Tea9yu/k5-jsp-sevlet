<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
JDBConnect jdbc = new JDBConnect();

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String nm = request.getParameter("nm");

if ("must".equals(id) && "1234".equals(pw)) {	// 사용자 인증
	// 로그인 성공
	if (save_check != null && save_check.equals("Y")) {	// [아이디 저장하기] 체크 확인
		JDBConnect.makeCookie(response, "id", user_id, 86400);	// 쿠키 생성
	}
	else {
		JDBConnect.deleteCookie(response, "loginId");	// 쿠키 삭제
	}

	JDBConnect.alertLocation("입력에 성공했습니다.", "InsertForm.jsp", out);
}
else {
	// 로그인 실패
	JDBConnect.alertBack("입력에 실패했습니다.", out);
}
%>
