<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="delete.jsp" method="post">
	<p>Enter Aadhar Number:<INPUT type ="text" NAME="search"/></p>
		<button NAME="DELETE" type="submit" value="delete">DELETE</button>
	</form>
	
	<%
	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/aadhaar","root","123");
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
				if(stmt.execute(sql))
					out.println("Deleted succesfully");
			}
			
		}catch(Exception e){
			System.out.println(e);
		}
	%>
</body>
</html>