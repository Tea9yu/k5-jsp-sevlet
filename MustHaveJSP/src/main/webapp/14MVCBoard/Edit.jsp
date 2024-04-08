<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<script type="text/javascript">
	function validateForm(form){
		if(form.name.value == ""){
			alert("작성자를 입력하세요.");
			form.name.focus();
			return false;
		}
		if(form.title.value == ""){
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		}
		if(form.content.value == ""){
			alert("내용을 입력하세요.");
			form.content.focus();
			return false;
		}
	}
</script>
</head>
<body>
<h2>파일 첨부형 게시판 - 수정하기(Edit)</h2>
<form name="writeFrm" method="post" enctype="multipart/form-data" action="../mvcboard/edit.do" onsubmit="return validateForm(this);">
<input type="hidden" name="idx" value="${ dto.idx }" />
<input type="hidden" name="preOfile" value="${ dto.ofile }" />
<input type="hidden" name="preSfile" value="${ dto.sfile }" />

<table	border="1" width="90%">
	<tr>
		<td>작성자</td>
		<td>
			<input type="text" name="name" sytle="width:150px;" value="${ dto.name }" />
		</td>
	</tr>
	<tr>
		<td>제목</td>
		<td>
			<input 
		</td>
	</tr>
</table>
</form>
</body>
</html>