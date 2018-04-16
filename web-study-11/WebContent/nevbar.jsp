<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<a class="navbar-brand" href="http://localhost:8181/web-study-11/ProductServlet?command=index_do"><img src="imgs/logo.PNG"
						alt="GuestHouse"> </a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right navbar-1-collapse">
					<ul class="nav navbar-nav">
						<li><a
							href="http://localhost:8181/web-study-11/ProductServlet?command=index_do">home
						</a></li>
						<li><a
							href="http://localhost:8181/web-study-11/ProductServlet?command=product_list">product
						</a></li>
						<li><a
							href="http://localhost:8181/web-study-11/BoardServlet?command=board_list">board</a></li>
						<li><a href="http://localhost:8181/web-study-11/ProductServlet?command=info_do">Contact</a></li>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</div>
</div>
<!-- // nav bar 부분 끝 -->