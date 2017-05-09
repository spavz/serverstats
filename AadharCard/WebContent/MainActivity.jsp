<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"></head>
<body>
<%
	if(!(request.getParameter("email").equals("vishak@gmail.com") && request.getParameter("password").equals("java8")))
	{
		%>
<div class="alert alert-danger">
  <strong>Error!</strong> Username or Password mismatch
</div>
		<%
	}else{
		
%>
	<form action="search.jsp" method="post">
		<br><button NAME="SEARCH" type="submit" value="search">Download your Aadhaar</button>
	</form>
	<form action="validate.jsp" method="post">
		<br><button type=""submit"" class="btn btn-primary">New Enrollment</button>
	</form>
	<form action="delete.jsp" method="post">
<br><button type="submit" class="btn btn-danger">Delete inaccurate Aadhaars</button>	</form>
	<%}%>
</body>
</html>