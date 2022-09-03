<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../resources/css/view.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/css/login.css">
    <title>Document</title>
</head>

<body>
	
	<!-- tiles.xml에 선언된 템플릿의 name을 사용합니다. -->
	<!-- 템플릿 jsp파일 -->
	<div id="wrap">
		<tiles:insertAttribute name="header"/>
		
		<tiles:insertAttribute name="body"/>
		
		<tiles:insertAttribute name="footer"/>
	</div>
	
	
	
	
</body>
</html>