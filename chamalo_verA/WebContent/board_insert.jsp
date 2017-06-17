<%@page import="chamalo_verA.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert...</title>

</head>
<body>

<%request.setCharacterEncoding("UTF-8");%>
 
    <jsp:useBean id="bvo" class="chamalo_verA.boardVo" scope="session"/>
    <jsp:setProperty property="*" name="bvo"/>

   <% 
  boardDAO dao = new boardDAO();
  String id =String.valueOf(session.getAttribute("id"));
  String subject =bvo.getSubject();
  String content = bvo.getContent();
   
    if(dao.boardInsert(id, subject, content)>0){
   	
        out.print("<script>");
        out.print("alert('작성완료');");  
        out.print("location.href='notice_board.jsp';");      
        out.print("</script>");
     }else{
       
        out.print("<script>");
        out.print("alert('글 작성이 정상적으로 완료되지 않았습니다.');");  
        out.print("history.back();");          
        out.print("</script>");
    }
 %>

</body>
</html>