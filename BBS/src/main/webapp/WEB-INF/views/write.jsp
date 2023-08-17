<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
</head>
<style>
table {
border-collapse:collapse;
width:75%;
}
table td {
border:1px solid black;
}
</style>
<body><h1 align=center>게시물작성</h1>
<form method="post" action="/insert" id=frmInsert name=frmInsert>
<table>
<%-- <tr><td>게시물번호</td><td id=seqno>${bpost.seqno}</td></tr> --%>
<tr><td>제목</td><td><input type=text name=title id=title size=64 maxlength=128></td></tr>
<tr><td>내용</td><td><textarea rows=10 cols=64 name=content id=content></textarea></td></tr>
<%-- <tr><td>작성자</td><td>${bpost.writer}</td></tr>
<tr><td>조회수</td><td>${bpost.hit}</td></tr>
<tr><td>작성시각</td><td>${bpost.created}</td></tr>
<tr><td>수정시각</td><td>${bpost.updated}</td></tr> --%>
<tr><td><a href="/">목록으로</a></td>
<td style='text-align:right;'>
<input type=submit id=btnSubmit name=btnSubmit value='작성완료'>&nbsp;&nbsp;
</td></tr>
</table>
</form>
</body>
<script src='https://code.jquery.com/jquery-Latest.js'></script>
<script>
$(document)
.on('submit','#frmInsert',function(){
	if($('#title').val()==''){
		alert('제목을 입력하시오'); return false;
	}
	if($('#content').val()==''){
		alert('게시물 내용을 입력하시오'); return false;
	}
	return true;
})
;
</script>
</html>