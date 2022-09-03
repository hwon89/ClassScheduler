<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../resources/css/login.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>회원가입</title>
</head>

<body class="bg-light">

<div id="wrap">
	<div id="container">
	<!--
	<form action="signup" method="post">
		<input type="text" name="name" placeholder="이름">
		<input type="text" name="userid" placeholder="아이디">
		<input type="password" name="pw" placeholder="비밀번호">
		<input type="password" name="valid_pw" placeholder="비밀번호 확인">
		
		<input type="submit" value="회원가입">
		<input type="button" value="로그인 페이지로" onclick="location.href='login'">
	</form>

	-->
		<div class="login-box">
			<h2>회원가입</h2>
			<form action="signup" method="post" id="signup_form">
				<div class="user-box">
					<input type="text" name="name" required="required"><label>이름</label>
				</div>
				<div class="user-box">
					<input type="text" name="userid" required="required"><label>아이디</label>
				</div>
				<div class="user-box">
					<input type="password" name="pw" required="required"><label>비밀번호</label>
				</div>
				<div class="user-box">
					<input type="password" name="valid_pw" required="required"><label>비밀번호 확인</label>
				</div>

				<div style="overflow:hidden">
					<a href="#" onclick="document.getElementById('signup_form').submit();" style="float:right">회원가입</a>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<script>
	const msg = "${msg}";
	if (msg != null && msg != "")
		alert(msg);
</script>
</html>