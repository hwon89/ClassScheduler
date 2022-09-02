<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>등록 리스트 화면</h3>
	현재 사용자 : ${ sessionVO.userid }
	<button onclick="location.href='../user/logout'">로그아웃</button>
</body>
</html>