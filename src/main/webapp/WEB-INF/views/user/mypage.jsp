<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body class="bg-light">
	<div id="wrap">
  	<br>
  		<div class="container">
  			<div class="text-center">
    			<h1>마이페이지</h1> <br><br>
  			</div>
 			<table class="table mytable">
    			<thead class="boxblue">
			      <tr >
			        <th>날짜</th>
			        <th>시간</th>
			        <th>강의명</th>
			        <th>강사</th>
			        <th>변경</th>
			      </tr>
			    </thead>
			    
			    <tbody class="boxtop">
			    <c:forEach var="vo" items="${ list }">
			    	<tr>
				        <td data-th="Date"> ${vo.date }   </td>
				        <td data-th="Time"> ${vo.time }   </td>
				        <td data-th="Title"> ${vo.title }   </td>
				        <td data-th="Name"> ${vo.name } </td>
				        <td data-th="ClassRegist">
				        <form action="deleteRegister" method="post" id="delete_form">
				        	<input type="hidden" name="registerId" value="${ sessionVO.id }">
				        	<a href="#" onclick="document.getElementById('delete_form').submit();">삭제</a>				        
				        </form>
				        </td>
			      	</tr>
			    </c:forEach>

			    </tbody>
			  </table>
    	</div>
	</div>
</body>


</html>