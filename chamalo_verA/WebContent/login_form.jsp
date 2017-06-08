<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>


<body onload="login.id.focus()">
 
  <form name="login" action="login.jsp" method="post">
    
      ID : <input type="text" name="id" /><p>
  		Password: <input type="text" name="pwd" /><p>
      <input type="submit" value="로그인"/>
      <input type="reset" value="취소"/>
  </form>



</body>
</html>