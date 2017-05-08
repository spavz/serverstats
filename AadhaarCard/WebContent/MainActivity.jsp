<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(!(request.getParameter("email").equals("vishak@gmail.com") && request.getParameter("password").equals("java8")))
	{
		out.println("Password mismatched 404");
	}else{
		
%>
	<form action="search.jsp" method="post">
		<button NAME="SEARCH" type="submit" value="search">SEARCH</button>
	</form>
	<form action="validate.jsp" method="post">
		<button NAME="NEW REGISTRATION" type="submit" value="register">NEW REGISTRATION</button>
	</form>
	<form action="delete.jsp" method="post">
		<button NAME="DELETE" type="submit" value="delete">DELETE</button>
	</form>
	<%}%>
</body>
</html>