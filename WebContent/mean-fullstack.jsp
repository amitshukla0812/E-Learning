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
<%@include file="nav.jsp"  %>
</head>
<body>
<div class="container" style="margin-top: 150px">
<%
    try
    {
    	Connection dbs = Conn.getCon();
    	String q="select* from course where id=29";
    	PreparedStatement ps=dbs.prepareStatement(q);
    	ResultSet rs = ps.executeQuery();
    	while(rs.next())
    	{
    		%>
<div class="card ">
  <div class="card-header">
   <%= rs.getString("course") %>
  </div>
  <div class="card-body">
    <h5 class="card-title">Mean FullStack</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  
 
  <p class="text-left" >
 <h2>Mean FullStack Introduction</h2>
<p> A "mean full stack developer" refers to a developer using the MEAN stack
(MongoDB, Express.js, Angular, and Node.js) to build full-stack web applications. 
A full stack developer has broad skills in both the front-end (user-facing) and 
back-end (server-side) of an application. The term "mean" describes the specific 
technology stack they use to build the application, which is entirely JavaScript-based. </p> 



<h2>What it means to be a MEAN stack developer</h2>
<ul>
<Li>Works across the entire application stack : They build and maintain both the client-side 
(what the user sees) and the server-side (the behind-the-scenes logic and data). </Li>

<Li>Uses the MEAN technologies : They specialize in the four components of the stack: </Li>
<ul>
<Li>MongoDB  :  A NoSQL database for data storage.</Li>

<Li>Express.js : A back-end web application framework for Node.js. </Li>

<Li>Angular: A front-end framework for building user interfaces.</Li> 

<Li>Node.js: A back-end JavaScript runtime environment. </Li>
</ul>
<Li>Leverages JavaScript : The entire stack is built using JavaScript, 
allowing developers to use the same language for both the front and back ends. </Li>

<Li>Builds complete applications : They are responsible for everything from the
 user interface to database management and server configuration. </Li>

<Li>Contributes to various tasks : Their responsibilities can include building 
new features, fixing bugs, performing tests, and collaborating with other teams. </Li>
 </ul>
  </p>
  
  </div>
  <div class="card-footer text-muted">
   
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