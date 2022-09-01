<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<h3>회원가입 페이지</h3>
	
	<form action="signup" method="post">
		<input type="text" name="name" placeholder="이름">
		<input type="text" name="id" placeholder="아이디">
		<input type="password" name="pw" placeholder="비밀번호">
		<input type="password" name="valid_pw" placeholder="비밀번호 확인">
		
		<input type="submit" value="회원가입">
		<input type="button" value="로그인 페이지로" onclick="location.href='login'">
	</form>
</body>
</html>