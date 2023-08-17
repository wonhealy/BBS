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
<body align=center>
<form method="post" action="/modify" id=frmUpdate name=frmUpdate>
<table>
<tr><td>게시물번호</td><td id=seqno>${bpost.seqno}</td></tr>
<tr><td>제목</td>
<td><input type=text name=title id=title value="${bpost.title}" size=64 maxlength=128>
</td></tr>
<tr><td>내용</td>
<td><textarea rows=10 cols=50 readonly>${bpost.content}</textarea></td></tr>
<tr><td>작성자</td><td>${bpost.writer}</td></tr>
<tr><td>조회수</td><td>${bpost.hit}</td></tr>
<tr><td>작성시각</td><td>${bpost.created}</td></tr>
<tr><td>수정시각</td><td>${bpost.updated}</td></tr>
<tr><td><a href="/">목록으로</a></td><td style='text-align:right;'>
<input type=submit id=btnSubmit name=btnSubmit value='수정완료'>&nbsp;&nbsp;
</td></tr>
</table>
</form>
</body>
<script src='https://code.jquery.com/jquery-Latest.js'></script>
<script>
$(document)
.on('click','#btnDelete',function(){
if(!confirm('정말로 지울까요?')) return false;

	document.location='/delete?seqno='+$('#seqno').text();
	return false;
}
.on('click','#btnUpdate',function(){
		document.location='/Update?seqno='+$('#seqno').text();
		return false;
	}
</script>
</html>