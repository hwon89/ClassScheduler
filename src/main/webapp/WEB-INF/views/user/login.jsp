<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인 페이지</h3>
	
	<form action="signin" method="post">
		<input type="text" name="userid" placeholder="아이디">
		<input type="password" name="pw" placeholder="비밀번호">
		
		<input type="submit" value="로그인">
		<input type="button" value="회원가입" onclick="location.href='join'">
	</form>
</body>

<script>
	const msg = "${msg}";
	if (msg != null && msg != "")
		alert(msg);
</script>
</html>