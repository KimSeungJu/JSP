<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Member Update</title>
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
					<div
						class="collapse navbar-collapse navbar-right navbar-1-collapse">
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
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>
	<!-- // nav bar 부분 끝 -->
	<div class="container">
	<h1>Member Update</h1>
		<form action="memberUpdate.do" method="post" name="frm">
			<table class="table table-hover">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" size="20"
						value="${mVo.name}"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid" size="20" id="userid"
						value="${mVo.userid}"></td>
				</tr>
				<tr>
					<td>암 호</td>
					<td><input type="password" name="pwd" size="20">*</td>
				</tr>
				<tr height="30">
					<td width="80">암호 확인</td>
					<td><input type="password" name="pwd_check" size="20">*</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" size="20"
						value="${mVo.email}"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" size="20"
						value="${mVo.phone}"></td>
				</tr>
				<tr>
					<td>등급</td>
					<td><c:choose>
							<c:when test="${mVo.admin==0}">
								<input type="radio" name="admin" value="0" checked="checked">일반회원
	<input type="radio" name="admin" value="1">관리자
	</c:when>
							<c:otherwise>
								<input type="radio" name="admin" value="0">일반회원
	<input type="radio" name="admin" value="1" checked="checked">관리자
	</c:otherwise>
						</c:choose></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="확인"
						onclick="return joinCheck()">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="취소">
					</td>
				</tr>
				<tr>
					<td colspan="2">${message}</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>