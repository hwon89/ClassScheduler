<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<title>Document</title>

</head>
<!-- <script>
  function handleOnClick(){
    let like = confirm("신청하시겠습니까?");
    document.getElementById('result').innerText = like;
  }
</script> -->

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
        
        <li class="nav-item"><a class="nav-link link-dark"> ${vo.id}님 환영합니다</a></li>
        <li class="nav-item"><a href="../user/login" class="nav-link link-dark px-2 active" aria-current="page">로그아웃</a></li>
        
      </ul>
      <!-- <ul class="nav">
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Login</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Sign up</a></li>
      </ul> -->
    </div>
  </nav>
</header>


<body class="bg-light">
<div id="wrap">
	<div class="container" id="box">
		<main>
			<div class="py-5 text-center">
				<h2>Checkout form</h2>
				<p class="lead">신청서를 확인하세요.</p>

				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-primary">신청내용</span>
				</h4>
				<ul class="list-group mb-3">
					<li class="list-group-item d-flex justify-content-between lh-sm">
				
						<div>
							<h6 class="my-0">신청날짜</h6>
						</div> 	<span class="text-muted">2022-09-01</span>
					</li>
					<li class="list-group-item d-flex justify-content-between lh-sm">
						<div>
							<h6 class="my-0">수업시간</h6>
						</div> <span class="text-muted"> ${list.name }</span>
					</li>
					<li class="list-group-item d-flex justify-content-between lh-sm">
						<div>
							<h6 class="my-0">강의명 </h6>
						</div> <span class="text-muted">${list.title }</span>
					</li>
					<li class="list-group-item d-flex justify-content-between lh-sm">
						<div>
							<h6 class="my-0">강사명 </h6>
						</div> <span class="text-muted">${list.name }</span>
					</li>

					<li class="list-group-item d-flex justify-content-between"><span>수강인원</span>
					
						
						<strong>${upHit} / ${list.max }</strong></li>
				</ul>

				<!-- <input button class="w-100 btn btn-primary btn-lg" type="button" onclick="handleOnClick()" value="신청하기")></button> -->
        <button  type="submit" id="confirm" class="w-100 btn btn-outline-primary btn-lg">신청하기</button>
        

        <script>
        document.getElementById('confirm').addEventListener('click', function(){
          Swal.fire({
            title: '신청하시겠습니까?',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '확인',
            cancelButtonText: '취소'
          }).then((result) => {
            if (result.value) {
                    
            }
          })
        })
        </script>
	
		<button type="submit" class="w-100 btn btn-outline-info btn-lg">취소하기</button>
			</div>
	</div>
</div>
</body>

<footer>
  <style></style>
  <div class="container">
    <footer class="py-3 my-4">
      <ul class="nav justify-content-center border-bottom pb-3 mb-3">

      </ul>
      <p class="text-center text-muted" id="footer">group2. 건호, 혜림, 혜민, 혜현, 희정</p>
    </footer>
  </div>

</footer>
</html>