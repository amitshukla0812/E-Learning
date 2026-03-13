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
     <th scope="col">id</th>
      <th scope="col">firstname</th>
      <th scope="col">lastname</th>
      <th scope="col">email</th>
      <th scope="col">phone</th>
       <th scope="col">message</th>
        
    </tr>
  </thead>
  <body>
    <%
    try
    {
    	Connection dbs = Conn.getCon();
    	String q="select* from contactdata";
    	PreparedStatement ps=dbs.prepareStatement(q);
    	ResultSet rs = ps.executeQuery();
    	while(rs.next())
    	{
    		%>
    		<tr>
    		<th scope="col">id</th>
    		<td><%=rs.getString("firstname") %></td>
    		<td><%=rs.getString("lastname") %></td>
    		<td><%=rs.getString("email") %></td>
    		<td><%=rs.getString("phone") %></td>
    		<td><%=rs.getString("message") %></td>
    		<td>
    		
    		<a href="Contactdelete.jsp?id=<%=rs.getString("id") %>" type="Button" class="btn btn-warning">Delete</a>
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