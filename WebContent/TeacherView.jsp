<%@ page import="conn.*" %>
<%@ page import="java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <%@ include file="nav.jsp" %>
</head>
<body>

<div class="site-section">
<div class="container">
  <div class="row mb-5 justify-content-center text-center">
    <div class="col-lg-4 mb-5">
      <h2 class="section-title-underline mb-5">
        <span></span>
      </h2>
    </div>
  </div>
  <div class="row">
  <%
try
{
	Connection dbs = Conn.getCon();
	String q="select* from teacher ";
	PreparedStatement ps=dbs.prepareStatement(q);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		%>
		
    <div class="card" style="width: 18rem;">
  <img src="<%=rs.getString("file") %>" class="card-img-top" alt="...">
  <div class="card-body">
    <h6 class="card-title">Trainer Name : <%= rs.getString("name") %></h6>
    <p class="card-text">Skill : <%= rs.getString("skills") %></p>
     <p class="card-text">Experience : <%= rs.getString("Experince") %> year's</p>
   
  </div>
</div>
		
		<% 
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
 </div>    



</body>
</html>