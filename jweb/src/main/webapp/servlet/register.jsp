<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/jweb/register" method="post"> 
		<p>
			<label for = "userid"> 아이디 : </label>
			<input type = "text" id="userid" name="userid">
		</p>
		<p>
			<label for = "passwd"> 비밀번호 : </label>
			<input type = "password" id="passwd" name="passwd">
		</p>
		<p><input type="hidden" name="phone" value="010-7979-3333">
		<p>
			<label for = "subject">과목</label>
			<input type = "checkbox" id="subject" name="subjesct" value="java">java
			<input type = "checkbox" id="subject" name="jsp" value="jsp">jsp
			<input type = "checkbox" id="subject" name="spring" value="spring">spring
			<input type = "checkbox" id="subject" name="android" value="android">android
		</p>
		<p>
			<input type="submit" value="신청하기">
			<input type="reset" value="다시입력">
		</p>
		
	
	</form>
</body>
</html>