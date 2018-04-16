<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Guest House Sample</title>

<!-- Bootstrap -->
<!-- nomalize -> 브라우저마다 태그에 따라 약간 차이가 있는 부분을 평준화해주는 작업 -->
<link rel="stylesheet" type="text/css" href="css/nomalize.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- 메인화면 스타일 설정-->
<style>
/*네브바 부분*/
/*네브바에서 사용되는 웹 폰트를 구글 폰트 서비스를 이용해서 설정*/
@import
	url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400);
.navbar {/*네브바 부분에 대한 설정*/
	background-color: #fff;
	border: none;
	padding-bottom: 10px;
	font-family: 'Source Sans Pro', sans-serif;
	font-weight: 300;
	font-size: 18px;
	height: 75px;
	text-transform: capitalize;
	border-bottom: 1px solid #AAAAAA
}
/*화면이 축소될 경우 네브바 부분에 생기는 = 부분에 대한 위치 선정*/
.navbar-toggle {
	position: relative;
	margin-top: 20px;
	top: 2px;
}
/*메뉴 부분에 대한 위치 선정*/
.navbar-nav {
	padding-right: 10px;
	margin-top: 20px;
	background-color: #fff
}
/*메뉴 텍스트 부분 간격 설정*/
.navbar-nav li {
	margin: 0 20px;
}

body {
	background-color: #fff;
}

.content1 {
	background: url("imgs/test3.jpg") no-repeat center top fixed;
	/*background-size:cover;*/
}

.content2 {
	background: url("imgs/para2.jpg") no-repeat center center fixed;
}

.content1, .content2 {
	height: 1100px;
	text-align: center;
	font-family: 'Source Sans Pro', sans-serif;
	font-weight: 300;
	color: rgba(255, 255, 255, 0.5);
	padding: 0 100px;
}

h1 {
	font-size: 75px;
	padding-top: 250px;
	font-weight: 300;
}

h4 {
	font-weight: 300;
	font-size: 15px;
}

p {
	color: #fff
}
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<%@ include file="nevbar.jsp"%>
	<div class="container">
		<div class="content1">
			<h1>Guest House Sample</h1>
			<h4>In egestas quam ipsum, vitae dignissim enim sollicitudin id.
				Nunc dictum tincidunt metus in pharetra. Praesent dignissim velit
				tortor, vel pellentesque augue ullamcorper ac. Aenean interdum
				mauris ipsum, nec ullamcorper risus pretium vel. Duis magna ligula,
				euismod eu mauris nec, ullamcorper adipiscing nulla. Nunc sapien
				felis, pellentesque sit amet consequat quis, laoreet id velit.
				Vivamus id mollis quam. Vivamus dictum velit ut sodales commodo.
				Proin ullamcorper eros dapibus urna facilisis, vitae fringilla est
				scelerisque. Duis ultrices iaculis hendrerit. Aliquam egestas, risus
				et consectetur pharetra, diam tortor tempus purus, vel venenatis
				massa orci at odio.</h4>

		</div>
		<div class="content2">
			<h1>Jeju Landscape</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam
				ut eros a odio egestas cursus nec in velit. Morbi id fermentum
				massa. Quisque tristique sem a iaculis placerat. Suspendisse
				elementum massa ut diam consectetur vehicula. Praesent in tempor
				lorem. Quisque a suscipit dolor. Morbi id eleifend justo, sit amet
				aliquam nulla. Suspendisse placerat tempor velit eu pharetra.
				Phasellus quis nibh velit. Sed faucibus metus sit amet laoreet
				iaculis.</p>
		</div>
		<div class="end"></div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">문서의 끝입니다.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="script/bootstrap.min.js"></script>
	<script type="text/javascript" src="script/waypoints.min.js"></script>
	<script type="text/javascript" src="script/simpleparallax.js"></script>
	<script type="text/javascript" src="script/modal.js"></script>
</body>
</html>