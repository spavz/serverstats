<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="search.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"></head>
<body>
<br>
	<form action="search.jsp" method="post">
	<p>Enter Aadhar Number: <INPUT type ="text" NAME="search"/></p>
		<p><button NAME="SEARCH" type="submit" value="search">SEARCH</button></p>
	</form>
	
	
	<%
	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/aadhaar","root","123");
			Statement stmt =con.createStatement();
			ResultSet rs= null;
			
			String aadharno= request.getParameter("search");
			if(aadharno==null)
				out.println("Please enter Aadhaar no in the search field.");
			else{
				String sql=null;
				sql="select * from enroll where no='"+aadharno+"'";
				rs=stmt.executeQuery(sql);
				
				if(rs.next()){
	%>
	<div class="container">
	<div class="row">
        
        
<div class="col-md-7 ">

<div class="panel panel-default">
  <div class="panel-heading">  <h4 >User Profile</h4></div>
   <div class="panel-body">
       
    <div class="box box-info">
        
       <div class="box-body">
                <div class="col-sm-6">

                     
                     </div>
              
              <br><br>        
            </div>
            <div class="col-sm-6">
            <h4 style="color:#00b1b1;"> Aadhaar Number: <%= rs.getString("no") %></h4></span>
            <span><img alt="" src="http://cashlessindia.gov.in/theme/images/adhar-card.png"></span>
            </div>
            <div class="clearfix"></div>
            <hr style="margin:5px 0 5px 0;">
    
              


<div class="col-sm-5 col-xs-6 tital " ><b>Name:</b></div><div class="col-sm-7"> <%= rs.getString("fname") %></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>Gender:</b></div><div class="col-sm-7"> <%= rs.getString("gender") %></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>Date Of Birth:</b></div><div class="col-sm-7"><%= rs.getString("dob") %></div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>Proof Of Identity:</b></div><div class="col-sm-7"><%= rs.getString("poi") %></div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>Address:</b></div><div class="col-sm-7"><%= rs.getString("addr") %></div>

 <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>City:</b></div><div class="col-sm-7"><%= rs.getString("city") %></div>

 <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>PIN:</b></div><div class="col-sm-7"><%= rs.getString("pin") %></div>
<div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>State:</b></div><div class="col-sm-7"> <%= rs.getString("state") %></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>Phone:</b></div><div class="col-sm-7"> <%= rs.getString("phone") %></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " ><b>Email:</b></div><div class="col-sm-7"> <%= rs.getString("email") %></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
       
            
    </div> 
    </div>
</div>  
    <script>
              $(function() {
    $('#profile-image1').on('click', function() {
        $('#profile-image-upload').click();
    });
});       
              </script> 
       
       
       
       
       
       
       
       
       
   </div>
</div>




         
	<%
					/* out.println("aadhar no    :"+rs.getString("no"));
					out.println("<br>");
					out.println("Name         :"+rs.getString("fname"));
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
					out.println("<br>"); */
					
				}
			}
			
		}catch(Exception e){
			System.out.println(e);
		}
	%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
</body>
</html>