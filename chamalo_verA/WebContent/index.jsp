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


<title>Chamalo</title>
</head>


<body>
 <%@include file="navbar.jsp" %>
 
 
<!--Home page style-->
        <header class="home-bg">
		<div class="overlay-img">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="header-details">
							<h1>흡연<br> 그것은 죽음으로 가는 <br>지름길입니다.</h1>
							<p>모두 함께 금연을 해봅시다.</p>
							<button class="btn btn-default"><a href="introduce.jsp" style="color:white">더 알아보기</a></button>
						</div>
					</div>
					

				</div>
			</div>
		</div>	
        </header>

        <!-- Sections -->
        <section id="promotion-area" class="sections">
            <div class="container">
                <!-- Example row of columns -->
                <div class="row">
					<div class="col-sm-4 col-sm-12 col-xs-12">
						<div class="promotion">
						
						<h1>담배<br> 알아보기<i class="fa fa-circle"></i></h1>
						<p>담배에 대해 알아야 금연을 할수있을것입니다. 간단한 담배의 성분,역사 에대해 알아봅시다.</p>
						<a href="introduce.jsp"><h4>더알아보기<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
						</div>
					</div>
					
					<div class="col-sm-4 col-sm-12 col-xs-12">
						<div class="promotion">
						
						<h1>게시판<br>함께해요<i class="fa fa-circle"></i></h1>
						<p>게시판을 이용해서 사람들과 함께 목표한 바를 이뤄봅시다.</p>
						<a href="boardList.jsp"><h4>더알아보기<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
						</div>
					</div>
					
					<div class="col-sm-4 col-sm-12 col-xs-12">
						<div class="promotion">
						
						<h1>도움을위한<br>사이트들이있어요<i class="fa fa-circle"></i></h1>
						<p>혼자서힘들땐 도움을 받을수있습니다. 도움을받을 사이트들을 알려드립니다.</p>
						<a href="help.jsp"><h4>더알아보기<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
						</div>
					</div>

                </div>
            </div> <!-- /container -->       
        </section>
		
		
		<section id="portfolio-area" class="sections">
            <div class="container">
                <!-- Example row of columns -->
                <div class="row">
					<div class="col-sm-6 col-sm-12 col-xs-12">
						<div class="portfolio">
							<img src="assets/images/chamalo_1.jpg" alt="" />
						</div>
					</div>
					
					<div class="col-sm-5 col-sm-12 col-xs-12">
						<div class="portfolio">
						
						<div class="item">
						<h1>흡연과 금연<i class="fa fa-circle"></i></h1>
						<h5>당신이 담배를 피우건 안 피우건, 일찍 죽지 않으려면 반드시 해야 하는 것.</h5>
						<p>문자 그대로 담배를 피우는 것(煙)을 금(禁)하는 행위. 관용적으로 끊는다(切)고 표현하지만</p>
						<p>사실 문법적으로나 기제로 보나 참는다(忍)가 맞다고 할수있습니다. 실제로 담배는 평생 참는 거지 끊는 게 아니다.라는 말이 괜히 돌아다니는 게 아니라고생각합니다.</p>
						<p>그런어려운 금연이 이 사이트를 통해 조금이나마 금연에 도움이 됬으면 좋겠습니다.</p>
						<a href="introduce.jsp"><h4>더알아보기<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						</div>
						
						</div>
					</div>
					
					
					
					

                </div>
            </div> <!-- /container -->       
        </section>
		 <!-- /container -->       
		
		<div class="scroll-top">
		
			<div class="scrollup">
				<i class="fa fa-angle-double-up"></i>
			</div>
			
		</div>
	

 
 <%@include file="footer.jsp" %>

</body>
</html>