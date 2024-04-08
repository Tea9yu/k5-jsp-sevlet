<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function validateform() {
			if (!form.title.value) {
				alter("title is required");
				return false;
			}
			if (!form.content.value) {
				alter("content is required");
				return false;
			}
			if (!form.id.value) {
				alter("id is required");
				return false;				
			}
		}
	</script>
</head>
<body>
	<form action="./InsertBoardProcess.jsp" method="post" onsubmit="return validateform(this)">
	<table style="border:1px solid">
	<tr><td>제목:</td><td><input type="text" name="title" maxlength="200"></td></tr>
	<tr><td>내용:</td><td><input type="text" name="content" maxlength="2000"></td></tr>
	<tr><td>아이디:</td><td><input type="text" name="id" maxlength="10"></td></tr>
	<tr><td colspan="2"><input style="width: 100%" type="submit" value="입력"></td></tr>
	</table>
	</form>	
</body>
</html>