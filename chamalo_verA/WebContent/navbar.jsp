<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
       
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!--<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/plugins.css" />
        <link rel="stylesheet" href="assets/css/opensans-web-font.css" />
        <link rel="stylesheet" href="assets/css/montserrat-web-font.css" />

				<!--For font-awesome css-->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>



</head>
<body>
<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
		
		<div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <nav class="mainmenu navbar navbar-default navbar-fixed-top">
            <div class="container">
			
			<div class="row">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
					
					<div class="brand-bg">
                    <a class="navbar-brand" href="index.jsp"><img src="assets/images/logo2.png" alt="Freelancer Logo" /></a>
					</div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav pull-right">
                        
                        <li><a href="#">흡연과 금연</a></li>
                        <li><a href="./notice_board.jsp">게시판</a></li>
                        <li><a href="./help.jsp">도움사이트</a></li>
                        
                        <%
                        if(session.getAttribute("id")==null){
                        out.print("<li><a href=\"./register.jsp\">회원가입</a></li>");
                        out.print("<li><a href=\"./login_form.jsp\">로그인</a></li>");
                        }else{
                        	out.print("<li><a href=\"\">"+session.getAttribute("id")+"님 환영!</a></li>");
                        	out.print("<li><a href=\"logout.jsp\"> 로그아웃</a></li>");
                        }
                        %>
                        
                        
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        
                    </ul>
                </div><!-- /.navbar-collapse -->
				</div>
				
            </div><!-- /.container-fluid -->
        </nav>

</body>
</html>