<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
	<form action="delete.jsp" method="post">
	<p>Enter Aadhar Number:<INPUT type ="text" NAME="search"/></p>
		<button NAME="DELETE" type="submit" value="delete">DELETE</button>
	</form>
	
	<%
	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/aadhaar","root","root");
			Statement stmt =con.createStatement();
			ResultSet rs= null;
			
			String aadharno= request.getParameter("search");
			if(aadharno==null)
				out.println("Please enter aadhar no in the search field");
			else{
				String sql=null;
				sql="select * from enroll where no='"+aadharno+"'";
				rs=stmt.executeQuery(sql);
				
				while(rs.next()){
					out.println("aadhar no&nbsp;&nbsp;&nbsp;&nbsp;:"+rs.getString("no"));
					out.println("<br>");
					out.println("Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:"+rs.getString("fname"));
					out.println("<br>");
					out.println("gender       :"+rs.getString("gender"));
					out.println("<br>");
					out.println("Date of Birth:"+rs.getString("dob"));
					out.println("<br>");
					out.println("POI          :"+rs.getString("poi"));
					out.println("<br>");
					out.println("Address      :"+rs.getString("addr"));
					out.println("<br>");
					out.println("City         :"+rs.getString("city"));
					out.println("<br>");
					out.println("PIN  		  :"+rs.getString("pin"));
					out.println("<br>");
					out.println("State        :"+rs.getString("state"));
					out.println("<br>");
					out.println("Phone        :"+rs.getString("phone"));
					out.println("<br>");
					out.println("Email-Id     :"+rs.getString("email"));
					out.println("<br>");
					
				}
				sql="delete from enroll where no='"+aadharno+"'";
				if(stmt.executeUpdate(sql)>0)
				{
					%>
<div class="alert alert-danger">
 <strong>This Aadhaar information has been deleted from the database</strong>
</div>
					<%
				}
			}
			
		}catch(Exception e){
			System.out.println(e);
		}
	%>
</body>
</html>