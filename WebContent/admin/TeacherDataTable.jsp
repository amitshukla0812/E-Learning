<%@ page import="conn.Conn" %>
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
<h2 class="text-center">Teacher Data</h2>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">name</th>
      <th scope="col">skills</th>
      <th scope="col">experince</th>
       <th scope="col">file</th>
        <th scope="col">Action</th>
    </tr>
  </thead>
  <body>
    <%
    try
    {
    	Connection dbs = Conn.getCon();
    	String q="select* from teacher";
    	PreparedStatement ps=dbs.prepareStatement(q);
    	ResultSet rs = ps.executeQuery();
    	while(rs.next())
    	{
    		%>
    		<tr>
    		
    		<td><%=rs.getString("id") %></td>
    		<td><%=rs.getString("name") %></td>
    		<td><%=rs.getString("skills") %></td>
    			<td><%=rs.getString("experince") %></td>
    		<td><%=rs.getString("file") %></td>
    		
    		<td>
    		
    		<a href="Teacherdelete.jsp?id=<%=rs.getString("id") %>" type="Button" class="btn btn-warning">Delete</a>
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
    <center><td><a href='Teacher.jsp' type=" button" class= "btn btn-warning  ">Back</a></center>
  </tbody>
</table>


</div>
</body>
</html>