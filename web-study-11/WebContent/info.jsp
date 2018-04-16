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
	font-style:italic;
	color: rgba(0, 0, 0, 0.5);
	padding-top: 90px;
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
		<h1>Contact</h1>
		<div class="container contact" >
          <div class="row">
            <div class="col-md-7">
                  <form class="form-horizontal" role="form" id="ajax-contact-form" action="#">  
                    <div class="form-group">                            
                      <input type="text" class="form-control required" name="name" placeholder="이름" title="Name">
                    </div>
                    <div class="form-group"> 
                      <input type="text" class="form-control required" name="email" placeholder="이메일" title="Email">
                    </div>
                    <div class="form-group">                    
                      <input type="text" class="form-control" name="subject" placeholder="제목" title="Subject">
                    </div>
                    <div class="form-group">                                              
                      <textarea name="message" class="form-control required" id="message" title="Message" placeholder="내용" rows=5></textarea>
                    </div>
                    <div class="form-group">   
                      <button class="btn btn-default" type="submit"> 전 송</button>                  
                      <button type="reset" class="btn btn-default"> 재설정</button>
                    </div>  
                  </form> 
             </div>          
              <div class="col-md-4  col-md-offset-1 contact_info wp5 delay-05s">
                  <p><span class="glyphicon glyphicon-home"> </span> 제주특별자치도 제주시 제주로 12 345-678</p>
                  <p><span class="glyphicon glyphicon-phone"> </span> +82 10 5199 5284</p>
                  <p><span class="glyphicon glyphicon-inbox"> </span> <a href="mailto:safe586@naver.com">safe586@naver.com </a></p>
                  <p><span class="glyphicon glyphicon-copyright-mark"> </span> GuestHouseSample</p>                   
              </div>
            </div>                
            </div><!-- contact_form -->    
	</div>
</body>
</html>