<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product List</title>
<!-- Bootstrap -->
<!-- nomalize -> 브라우저마다 태그에 따라 약간 차이가 있는 부분을 평준화해주는 작업 -->
<link rel="stylesheet" type="text/css" href="css/nomalize.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/nevbar.css">
<!-- 초기화 -->
<style>
* {
	margin: 0;
	padding: 0;
}
h1 {
	font-family: 'Source Sans Pro', sans-serif;
	font-weight: 300;
	font-style:italic;
	color: rgba(0, 0, 0, 0.5);
	padding-top:90px;
}
a {
	text-decoration: none;
}
li {
	list-style: none;
}
img {
	border: 0;
}
html {
	background: #f7f5f5;
}
</style>
<!-- 종이 스타일 -->
<style>
.paper {
	width: 220px;
	margin-top: 10px;
	padding: 15px 15px 0;
	font-size: 11px;
	background: #FFFFFF;
	box-shadow: 0 1px 3px rgba(34, 25, 25, 0.4);
}

.paper-content {
	margin: 0 -15px;
	margin-top: 10px;
	padding: 10px 15px;
	background: #F2F0F0;
	overflow: hidden;
}

.paper-description {
	margin: 10px 0;
}

.paper-link {
	display: block;
	float: left;
}

.paper-text {
	float: left;
	width: 150px;
	margin-left: 10px;
}
</style>
<!-- 섹션 -->
<style>
/* 미디어 쿼리를 지원하지 않는 웹 브라우저 */
#main-section {
	width: 920px;
	margin: 0 auto;
}

/* 3줄 */
@media ( max-width : 919px) {
	#main-section {
		width: 690px;
	}
}

/* 4줄 */
@media ( min-width : 920px) and (max-width:1149px) {
	#main-section {
		width: 920px;
	}
}

/* 5줄 */
@media ( min-width :1150px) and (max-width:1379px) {
	#main-section {
		width: 1150px;
	}
}

/* 6줄 */
@media ( min-width :1380px) {
	#main-section {
		width: 1380px;
	}
}
</style>
<!-- 라이트박스 -->
<style>
#darken-background {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 100%;
	display: none;
	background: rgba(0, 0, 0, 0.9);
	z-index: 10000;
	overflow-y: scroll;
}

#lightbox {
	width: 700px;
	margin: 20px auto;
	padding: 15px;
	border: 1px solid #333333;
	border-radius: 5px;
	background: white;
	box-shadow: 0 5px 5px rgba(34, 25, 25, 0.4);
	text-align: center;
}

.user-information {
	overflow: hidden;
	text-align: left;
}

.user-information-image {
	float: left;
	width: 50px;
}

.user-information-text {
	float: right;
	width: 620px;
}

.lightbox-splitter {
	margin: 10px 0;
}
</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="script/jquery.masonry.min.js"></script>
<script src="script/jquery.imagesloaded.min.js"></script>
<script>
	// 페이지
	$(document).ready(function() {
		// 이미지 로드 확인
		$('#main-section').imagesLoaded(function() {
			// jQuery Masonry 플러그인 적용
			$('#main-section').masonry({
				itemSelector : '.paper',
				columnWidth : 230,
				isAnimated : true
			});
		});
	});

	// 라이트 박스
	$(document).ready(function() {
		function showLightBox() {
			// 라이트박스를 보이게 합니다.
			$('#darken-background').show();
			$('#darken-background').css('top', $(window).scrollTop());
			// 스크롤을 못하게 합니다.
			$('body').css('overflow', 'hidden');
		}

		function hideLightBox() {
			// 라이트박스를 안 보이게 합니다.
			$('#darken-background').hide();

			// 스크롤을 하게 합니다.
			$('body').css('overflow', '');
		}

		// 라이트박스 제거 이벤트
		$('#darken-background').click(function() {
			hideLightBox();
		});

		// 클릭 이벤트 연결
		$('.paper').click(function() {
			showLightBox();
		});

		// 라이트박스 제거 이벤트 보조
		$('#lightbox').click(function(event) {
			event.stopPropagation()
		});
	});
</script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<%@ include file="/nevbar.jsp"%>
	<div class="container">
	<h1>Product List</h1>
	</div>
	<!-- 본문 영역 -->
	<section id="main-section">

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh1.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh2.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh3.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh4.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh5.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh1.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh2.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh3.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh4.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh5.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh1.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh2.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh3.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh4.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh5.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh1.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh2.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh3.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh4.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>

	<div class="paper">
		<div class="paper-holder">
			<a><img width="190" src="imgs/gh5.PNG" /></a>
		</div>
		<p class="paper-description">Lorem ipsum dolor sit amet</p>
		<div class="paper-content">
			<a class="paper-link" href="#"><img
				src="http://placehold.it/30x30" /></a>
			<p class="paper-text">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut
				magna.</p>
		</div>
	</div>
	</section>
	<!-- 라이트박스 -->
	<div id="darken-background">
		<div id="lightbox">
			<div class="user-information">
				<a class="user-information-image" href="#"> <img
					src="http://placehold.it/50x50" />
				</a>
				<div class="user-information-text">
					<h3>User</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Nullam sem mi, egestas a facilisis eget, egestas ut magna.</p>
				</div>
			</div>
			<hr class="lightbox-splitter" />
			<img src="http://placehold.it/600x750" />
		</div>
	</div>
</body>
</html>
