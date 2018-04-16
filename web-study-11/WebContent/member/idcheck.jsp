<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Id check</title>
<!-- Bootstrap -->
<!-- nomalize -> 브라우저마다 태그에 따라 약간 차이가 있는 부분을 평준화해주는 작업 -->
<link rel="stylesheet" type="text/css" href="css/nomalize.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<style>
h1 {
	font-family: 'Source Sans Pro', sans-serif;
	font-weight: 300;
	color: rgba(0, 0, 0, 0.5);
}
</style>
<script type="text/javascript" src="script/member.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<h1>Id check</h1>
<form class="form-inline action="idCheck.do" method="get" name="frm">
	<div class="form-group">
	<label>아이디</label>
	<input type="text" name="userid" value="${userid}">
	</div>
	<input type = "submit" class="btn btn-default" value="중복 체크">
	<br>
	<c:if test="${result==1 }">
		<script type="text/javascript">opener.document.frm.userid.value="";</script>
	${userid}는 이미 사용 중인 아이디입니다.
	</c:if>
	<c:if test="${result==-1 }">
	${userid}는 사용가능한 아이디입니다.
	<input type ="button" class="btn btn-default" value="사용" class="cancel" onclick="idok()">
	</c:if>
</form>
</body>
</html>