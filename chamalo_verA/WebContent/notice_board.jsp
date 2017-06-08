<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chamalo Notice Board</title>



   <script type="text/javascript">
        function writeForm(){
            location.href="boderWriteForm.jsp";
        }
       	function plzLogin(){
       		alert("로그인 해주세요.");	   
       		location.href="login_form.jsp";
       	}
    </script>

</head>
<body>

 <%@include file="navbar.jsp" %>
 
		
 <section id="portfolio-area" class="sections">
 </section>
 <section id="portfolio-area" class="sections">
            <div class="col-sm-4 col-sm-12 col-xs-12">
						<div class="promotion">
						
        <table  border="3" bordercolor="lightgray">
            <tr >
                <td>글번호</td>
                <td>제목</td>
                <td>작성자</td>
                <td>작성일</td>
                <td>조회수</td>
            </tr>    
            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
        </table>
 </div>
</div>

</section>


<% if( session.getAttribute("id") !=null ){
	out.print("<input type=\"button\" value=\"글쓰기\" onclick=\"writeForm()\">");
} else{%>
<input type="button" name="write" value="글쓰기" onclick="plzLogin()"> 
<%}%>
 
 
 
 <div class="scroll-top">
		
			<div class="scrollup">
				<i class="fa fa-angle-double-up"></i>
			</div>
			
		</div>
 
 
 
 <%@include file="footer.jsp" %>
</body>
</html>