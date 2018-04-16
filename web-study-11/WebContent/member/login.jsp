<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<!-- Bootstrap -->
<!-- nomalize -> 브라우저마다 태그에 따라 약간 차이가 있는 부분을 평준화해주는 작업 -->
<link rel="stylesheet" type="text/css" href="css/nomalize.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/nevbar.css">
<style>
h1 {
	font-family: 'Source Sans Pro', sans-serif;
	font-weight: 300;
	color: rgba(0, 0, 0, 0.5);
	padding-top: 90px;
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
	<div class="container-fluid">
		<!-- nav bar 부분 -->
		<!-- 메인 메뉴가 들어가는 부분 container 클래스 선택자 적용 -->
		<div class="container">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
				id="navbar-scroll">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-1-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img src="imgs/logo.PNG"
						alt="GuestHouse"> </a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right navbar-1-collapse">
					<ul class="nav navbar-nav">
						<li><a
							href="http://localhost:8181/web-study-project/page/index.jsp">home
						</a></li>
						<li><a
							href="http://localhost:8181/web-study-11/ProductServlet?command=product_list">product
						</a></li>
						<li><a
							href="http://localhost:8181/web-study-11/BoardServlet?command=board_list">board</a></li>
						<li><a href="#">login </a></li>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse --> </nav>
		</div>
	</div>
	<!-- // nav bar 부분 끝 -->
	<div class="container">
		<h1>Login</h1>
		<form action="login.do" method="post" name="frm">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid" value="${userid}"></td>
				</tr>
				<tr>
					<td>암 호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="로그인" onclick="return loginCheck()">&nbsp;&nbsp; <input
						type="reset" value="취소">&nbsp;&nbsp; <input type="button"
						value="회원가입" onclick="location.href='MemberServlet?command=join_do'"></td>
				</tr>
				<tr>
					<td colspan="2">${message}</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>