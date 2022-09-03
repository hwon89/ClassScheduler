<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
  <nav class="py-2 bg-light border-bottom">
    <div class="container d-flex flex-wrap">
     	<ul class="nav me-auto">
        	<li class="nav-item"><a href="../user/mypage" class="nav-link link-dark px-2">마이페이지</a></li>
      	</ul>
      	
      <c:choose>
      <c:when test="${not empty sessionVO.userid}">
     	<div style="border: floatright">     	
	      <ul class="nav me-auto">
	        <li class="nav-item"><a class="nav-link link-dark"> ${sessionVO.userid}님 환영합니다.</a></li>
	        <li class="nav-item"><a href="../user/logout" class="nav-link link-dark px-2 active" aria-current="page">로그아웃</a></li>
	      </ul>
    	</div>
    	</c:when>
    	
    	</c:choose>
     </div>	
  </nav>
</header>