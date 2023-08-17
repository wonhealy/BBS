<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css//home.css" rel="stylesheet" />
<title>home</title>
</head>
<style>

</style>
<body style=align:center>
<h1>자유게시판</h1>
<table>
<tr></tr>
</table>
<table id=tblBoard>
<thead>
<tr><th>게시물번호</th><th>제목</th><th>작성자</th><th>조회수</th><th>작성시각</th><th>수정시간</th></tr>
</thead>
<tbody>
<c:forEach items="${blist}" var="bpost">
<tr><td>${bpost.seqno}</td><td>${bpost.title}</td><td>${bpost.writer}</td>
<td>${bpost.hit}</td><td>${bpost.created}</td><td>${bpost.updated}</td></tr>
</c:forEach>
</tbody>
</table>
<table><tr><td style='text-align:right;'>
<a href='write'>글쓰기</a>
</td></tr>
</table>
</body>
<script src='https://code.jquery.com/jquery-Latest.js'></script>
<script>src="js//home.js"</script>
</html>