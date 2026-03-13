<%@ page import="conn.Conn" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="userNav.jsp" %>
</head>
<body>
<div class="container-fluid">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Course</th>
      <th scope="col">Description</th>
      <th scope="col">Duration</th>
      <th scope="col">startdate</th>
      <th scope="col">enddate</th>
      <th scope="col">Fees</th>
       
        <th scope="col">Trainer</th>
         
    </tr>
  </thead>
  <tbody>
    <%
    try
    {
    	Connection dbs = Conn.getCon();
    	String q="select* from course";
    	PreparedStatement ps=dbs.prepareStatement(q);
    	ResultSet rs = ps.executeQuery();
    	while(rs.next())
    	{
    		%>
    		<tr>
    		<td><%=rs.getString("id") %></td>
    		<td><%=rs.getString("course") %></td>
    		<td><%=rs.getString("description") %></td>
    		<td><%=rs.getString("duration") %></td>
    		 <td><%=rs.getString("startdate") %></td>
    		  <td><%=rs.getString("enddate") %></td>
    	    <td><%=rs.getString("fees") %></td>
    	    	
    		<td><%=rs.getString("trainer") %></td>
    		
    		
    		</tr>
    		
    		<% 
    	}
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    
    %>
    
  </tbody>
</table>


</div>
</body>
</html>