<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
			        <th>시간</th>
			        <th>강의명</th>
			        <th>강사</th>
			        <th>수강인원</th>
			        <th>수강신청</th>
			      </tr>
			    </thead>
			    
			    <tbody class="boxtop">
			     <c:forEach var="vo" items="${list }" varStatus = "status">
			      <tr>
			        <td data-th="Date"> ${vo.date }     </td>
			        <td data-th="Date"> ${vo.time }     </td>
			        <td data-th="Subject"> ${vo.title }   </td>
			        <td data-th="Teacher"> ${vo.name } </td>
			        <td data-th="MaxNumber"> ${vo.max } </td>
			        <td data-th="ClassRegist">
			          <a href="../enroll/detail?id=${vo.id }"> 상세페이지 </a>
			        </td>
			      </tr>
			      </c:forEach>
			    </tbody>
			  </table>
    	</div>
	</div>
</body>