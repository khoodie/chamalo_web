<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loging....</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="vo" class="chamalo_verA.userVo"/>
<jsp:setProperty property="*" name="vo"/>
<jsp:useBean id="dao" class="chamalo_verA.userDAO"/>


<%
    if(dao.userLogin(vo)>0){
    	 
    		session.setAttribute("id",vo.getId());
        out.print("<script>");
        out.print("alert('로그인 완료');");  
        out.print("location.href='index.jsp';");      
        out.print("</script>");
     }
    else{%>                                                        
	<script>
		alert("로그인 실패");
		history.go(-1);                                    // 이전 페이지로 이동
	</script>
<%}%>


</body>
</html>