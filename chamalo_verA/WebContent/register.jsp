<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>



</head>
<body>

 <%@include file="navbar.jsp" %>
<div class="container" style="margin-top:10%;" align="center">

<form method = "post" action="user_insert.jsp" >


<table style="width:50%">


<h2>회원가입하기</h2></br>


<tr>
<td>아이디:</td><td><input type = "text"  class="form-control" name="id"/></td>
</tr>
<tr>
<td>비밀번호:</td><td><input type = "text" class="form-control" name="pwd"/></td>
</tr>

<tr>
<td>이름:</td><td><input type = "text" class="form-control" name="name"/></td>
</tr>

<tr>
<td>성별:</td>
<td>
<div class="btn-group" data-toggle="buttons">
  <label class="btn btn-primary active">
    <input type="radio" name="gender" id="option1" value="0" autocomplete="off">남자
  </label>
  
  <label class="btn btn-primary">
    <input type="radio" name="gender" id="option2" value="1" autocomplete="off"> 여자
  </label>
</div>
</td>


</tr>

<tr>
<td>생일:</td><td><input type="date" class="form-control" name="birth" placeholder="연도.월.일 점없이 입력"/></td>
</tr>

<tr>
<td>흡연시작일:</td><td> <input type="date" class="form-control" name="start_smoke" placeholder="연도.월.일 점없이 입력"/></td>
</tr>

<tr>
<td>하루흡연량:</td><td><input type = "text"class="form-control"  name="smoke" placeholder="개비"/></td>
</tr>

<tr>
<td><input class="btn btn-default" type="submit" value="가입하기" align="left"/></td>
<td><input class="btn btn-default"  type="reset" value="취소" align="right"/></td>
</tr>

</table>

</form>
</div>

<%@include file="footer.jsp" %>



</body>
</html>