<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/board.js"></script>
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
<script type="text/javascript" src="script/board.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div align="center">
		<h1>Board Check</h1>
		<form class="form-inline action="BoardServlet" name="frm" method="get" >
			<input type="hidden" name="command" value="board_check_pass">
			<input type="hidden" name="num" value="${param.num}">

			<div class="form-group">
			<label>비밀번호 입력</label>
			<input type="password" class="form-control" name="pass" size="20">
			</div>
			<input type="submit" class="btn btn-default" value=" 확 인 "
				onclick="return passCheck()"> <br>
			<br>${message}
		</form>
	</div>
</body>
</html>