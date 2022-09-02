<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="../resources/css/login.css">
<title>로그인</title>
</head>

<body class="bg-light">
<div id="wrap">
	<header> </header>
	<div id="container">
	<!--
	<body>
	<h3>로그인 페이지</h3>
	
	<form action="signin" method="post">
		<input type="text" name="userid" placeholder="아이디">
		<input type="password" name="pw" placeholder="비밀번호">
		
		<input type="submit" value="로그인">
		<input type="button" value="회원가입" onclick="location.href='join'">
	</form>
	</body>


	-->
		<div class="login-box">
			<h2>로그인</h2>
			<form action="signin" method="post" id="signin_form">
				<div class="user-box">
					<input type="text" name="userid" required="required"><label>아이디</label>
				</div>
				<div class="user-box">
					<input type="password" name="pw" required="required"><label>비밀번호</label>
				</div>

				<div style="overflow: hidden;">
					<a href="join" style="float:left">회원가입</a>
					<a href="#" onclick="document.getElementById('signin_form').submit();" style="float:right">확인</a>
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