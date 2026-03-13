<%@ page import="conn.*" %>
<%@ page import="java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="adminNav.jsp" %>
</head>
<body>
<div class="container-fluid">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
       <th scope="col">Course</th>
        <th scope="col">Password</th>
         <th scope="col">City</th>
          <th scope="col">Amount</th>
           <th scope="col">State</th>
           <th scope="col">Branch</th>
           <th scope="col">Address</th>
           <th scope="col">Country</th>
           <th scope="col">Action</th>
    </tr>
  </thead>
  <body>
    <%
    try
    {
    	Connection dbs = Conn.getCon();
    	String q="select* from student";
    	PreparedStatement ps=dbs.prepareStatement(q);
    	ResultSet rs = ps.executeQuery();
    	while(rs.next())
    	{
    		%>
    		<tr>
    		
    		<td><%=rs.getString("id") %></td>
    		<td><%=rs.getString("user") %></td>
    		<td><%=rs.getString("email") %></td>
    		<td><%=rs.getString("phone") %></td>
    		<td><%=rs.getString("course") %></td>
    		<td><%=rs.getString("password") %></td>
    		<td><%=rs.getString("city") %></td>
    		<td><%=rs.getString("amount") %></td>
    		<td><%=rs.getString("state") %></td>
    		<td><%=rs.getString("branch") %></td>
    		<td><%=rs.getString("address") %></td>
    		<td><%=rs.getString("country") %></td>
    		<td>
    		<a href="edit.jsp?id=<%=rs.getString("id") %>" type="Button" class="btn btn-success">Edit</a>
    		<a href="delete.jsp?id=<%=rs.getString("id") %>" type="Button" class="btn btn-warning">Delete</a>
    		</td>
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