<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Board List</title>
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
	padding-top:90px;
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
<%@ include file="/nevbar.jsp"%>
	<div class = "container">
		<h1>Board Update</h1>
		<form name="frm" method="post" action="BoardServlet">
			<input type="hidden" name="command" value="board_update"> <input
				type="hidden" name="num" value="${board.num}">
			<table class="table table-hover">
				<tr>
					<th>작성자</th>
					<td><input type="text" size="12" name="name"
						value="${board.name}"> * 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" size="12" name="pass"> *
						필수 (게시물 수정 삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" size="40" maxlength="50" name="email"
						value="${board.email}"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" size="70" name="title"
						value="${board.title}"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content">${board.content}</textarea></td>
				</tr>
			</table>
			<br>
			<br> <input type="submit" class="btn btn-default" value="등록"
				onclick="return boardCheck()"> <input type="reset" class="btn btn-default"
				value="다시 작성"> <input type="button" class="btn btn-default" value="목록"
				onclick="location.href='BoardServlet?command=board_list'">
		</form>
	</div>

</body>
</html>