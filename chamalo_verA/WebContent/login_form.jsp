<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>

<body onload="login.id.focus()">
<%@include file="navbar.jsp" %>

 <div style="margin-top:10%;" align="center">
  <form name="login" action="login.jsp" method="post">
    <table style="width:10%">
    <h2>로그인</h2></br>
    <tr>
     <td> ID :</td><td><input type="text" lass="form-control" name="id" /></td>
  	
  	</tr>
  	<tr>
  		<td>Password:</td><td><input type="text" lass="form-control" name="pwd" /></td>
  	</tr>
  		<tr>
      <td><input type="submit" class="btn btn-default"  value="로그인"/></td>
      <td><input type="reset" class="btn btn-default" value="취소"/></td>
      </tr>
      
 </table>
  </form>

</div>

<%@include file="footer.jsp" %>
</body>
</html>