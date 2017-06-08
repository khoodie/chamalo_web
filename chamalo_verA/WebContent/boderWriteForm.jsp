<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Write post..</title>


</head>
<body>

 <%@include file="navbar.jsp" %>
 <section id="portfolio-area" class="sections">
 </section>
 <section id="portfolio-area" class="sections">
            <div class="col-sm-4 col-sm-12 col-xs-12">
						<div class="promotion">
						

						
<div class="row">
    <h1>글쓰기</h1>
    <br>
    
    <form method="post" action="board_insert.jsp" enctype="multipart/form-data"> 
   <%--  <input type="hidden" name="board_id" value="${sessionScope.sessionID}"> --%>
   
        <jsp:useBean id="vo" class="chamalo_verA.boardVo"/>
        
            <%  vo.setId(String.valueOf(session.getAttribute("id")));
           			vo.setName(String.valueOf(session.getAttribute("name")));
           			%>
           
   
    <table width="700" border="3" bordercolor="lightgray" align="center">
        <tr>
            <td>작성자</td>
            <td><%=vo.getId()%></td>
            
        </tr>
            <tr>
            <td>제 목</td>
            <td>
                <input name="subject" type="text" size="70" maxlength="100" value="제목을입력하세요."/>
            </td>        
        </tr>
        <tr>
            <td>내 용</td>
            <td>
                <textarea name="content" cols="72" rows="20"></textarea>            
            </td>        
        </tr>
        <tr>
            <td>파일첨부</td>
            <td>
                <input type="file" name="board_file" />
            </td>    
        </tr>
 
        <tr align="center" valign="middle">
            <td colspan="5">
                <input type="submit" value="등록" >
                <input type="reset" value="작성취소" >
                <input type="button" value="목록" >            
            </td>
        </tr>
    </table>    
    </form>
    </div>
    </div>
    </div>
    </section>
    


 <%@include file="footer.jsp" %>
</body>
</html>