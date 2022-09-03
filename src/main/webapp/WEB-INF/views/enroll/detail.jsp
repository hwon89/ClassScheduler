<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

<body class="bg-light">
<div id="wrap">
<form action="register" method="post">
	<div class="container" id="box">
		<main>
		<input type="hidden" name="sessionId" value="${ sessionVO.id }"> 
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
						</div> 	<span class="text-muted">${list.date }</span>
					</li>
					<li class="list-group-item d-flex justify-content-between lh-sm">
						<div>
							<h6 class="my-0">수업시간</h6>
						</div> <span class="text-muted"> ${list.time }</span>
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
					
						
						<strong>${countTutorId} / ${list.max}</strong></li>
				</ul>
				
	
				<input type="hidden" name="id" value="${list.id}" >
				<!-- <input button class="w-100 btn btn-primary btn-lg" type="button" onclick="handleOnClick()" value="신청하기")></button> -->
        <button  type="submit" id="confirm" class="w-100 btn btn-outline-primary btn-lg">신청하기</button>
	
		<button type="button" id="cancel" class="w-100 btn btn-outline-info btn-lg">
		 취소하기</button>
		
	 <script>
        document.getElementById('cancel').addEventListener('click', function(){
          Swal.fire({
            title: '취소하시겠습니까?',
            showCancelButton: true,
            confirmButtonColor: '#3085D6',
            cancelButtonColor: '#d33',
            confirmButtonText: '확인',
            cancelButtonText: '취소'
         }).then((result) => {
            if (result.value) {
                    location="list";
            }
          })
        })
        </script>
			</div>
	</div>
	</form>
</div>
</body>