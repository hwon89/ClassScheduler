<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="view.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/css/login.css">
    <title>Document</title>
</head>

<header>
  <nav class="py-2 bg-light border-bottom">
    <div class="container d-flex flex-wrap">
     	<ul class="nav me-auto">
        	<li class="nav-item"><a href="#" class="nav-link link-dark px-2 active" aria-current="page">홈</a></li>
        	<li class="nav-item"><a href="#" class="nav-link link-dark px-2">예약페이지</a></li>
        	<li class="nav-item"><a href="#" class="nav-link link-dark px-2">FAQs</a></li>
        	<li class="nav-item"><a href="#" class="nav-link link-dark px-2">About</a></li>
      	</ul>
      
     	<div style="border: floatright">
	      <ul class="nav me-auto">
	        <li class="nav-item"><a class="nav-link link-dark"> ${sessionVO.userid}님 환영합니다.</a></li>
	        <li class="nav-item"><a href="../user/logout" class="nav-link link-dark px-2 active" aria-current="page">로그아웃</a></li>
	      </ul>
	      
	      <!-- <ul class="nav">
	        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Login</a></li>
	        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Sign up</a></li>
	      </ul> -->
    	</div>
     </div>	
  </nav>
</header>

<body class="bg-light">
	<div id="wrap">
  	<br>
  		<div class="container">
  			<div class="text-center">
    			<h1>Class Reservation System</h1> <br><br>
  			</div>
 			<table class="table mytable">
    			<thead class="boxblue">
			      <tr >
			        <th>날짜</th>
			        <th>강의명</th>
			        <th>강사</th>
			        <th>수업시간</th>
			        <th>수강인원</th>
			        <th>수강신청</th>
			      </tr>
			    </thead>
			    <tbody class="boxtop">
			      <tr>
			        <td data-th="Date"> ????????? </td>
			        <td data-th="Subject"> ?????????  </td>
			        <td data-th="Teacher"> ????????? </td>
			        <td data-th="Time"> ?????????   </td>
			        <td data-th="MaxNumber"> ????????? </td>
			        <td data-th="ClassRegist">
			          <a href="../enroll/detail"> 상세페이지 </a>
			        </td>
			      </tr>
			    </tbody>
			  </table>
    	</div>
	</div>
</body>

<footer>
  <div class="container">
    <footer class="py-3 my-4">
      <ul class="nav justify-content-center border-bottom pb-3 mb-3"></ul>
      <p class="text-center text-muted" id="footer">group2. 건호, 혜림, 혜민, 혜현, 희정</p>
    </footer>
  </div>
</footer>
</html>