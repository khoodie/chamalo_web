<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert...</title>
</head>
<body>

<%request.setCharacterEncoding("UTF-8");%>
 
    <jsp:useBean id="vo" class="chamalo_verA.boardVo"/>
    <jsp:setProperty property="*" name="vo"/>
    <jsp:useBean id="dao" class="chamalo_verA.boardDAO"/>
    
    <%
    if(dao.boardInsert(vo)>0){
   	
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