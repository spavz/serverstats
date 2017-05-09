<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<%
	String[] param = {"fname","gender","dob","poi","addr","city","pin","state","phone","email"};
	HashMap<String,String> h = new HashMap();
	
	for(String x: param)
		h.put(x,request.getParameter(x));
	
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/aadhaar","root","root");
		
    	Statement stmt= conn.createStatement();
    	String qu="insert into enroll values (";   
    	int i =0;
    	int minimum=1000000;
    	int maximum=9999999;
    	int randomNum = minimum + (int)(Math.random() * maximum); 
    	
    		qu += "'" + String.valueOf(randomNum) + "', ";
    		
    		for(i=0;i<param.length-1;i++)
    			qu+="'" + h.get(param[i]) + "', ";
    		
    		qu+="'" + h.get(param[i]) + "')";  
   		
    		stmt.executeUpdate(qu);		
	%>
	<div class="alert alert-success">
  <strong>Success!</strong> You have now enrolled for Aadhaar. You will get your Aadhaar number in sometime from UIDAI!
</div>
	
	
		

</body>
</html>