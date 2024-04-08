<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// DB에 연결
	JDBConnect jdbc = new JDBConnect();
	
	// 테스트용 입력값 준비
	String id = request.getParameter("id");
	String pass = request.getParameter("pw");
	String name = request.getParameter("nm");
	
	// 쿼리문 생성
	String sql = "INSERT INTO member(id, pass, name) VALUES (?, ?, ?)";
	PreparedStatement psmt =jdbc.getCon().prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pass);
	psmt.setString(3, name);
	psmt.executeUpdate();
	
	// 쿼리 수행
	int inResult = psmt.executeUpdate();
	out.println(inResult + "행이 입력되었습니다.");
	
	try {
		psmt.close();
	} catch (Exception e){
		e.printStackTrace();
	}
	
	// 연결 닫기
	jdbc.close();
%>