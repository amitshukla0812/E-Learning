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
    	String q="select* from course where id=28";
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
    <h5 class="card-title">Python FullStack</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  <p class="text-left" >
<h2>Python FullStack Introduction</h2>
<p>A Python full-stack developer is a software engineer who works on both the 
front-end and back-end of web applications, using Python as their primary back-end language. 
They handle client-side development with languages like HTML, CSS, and JavaScript, and server-side
 logic with Python frameworks like Django or Flask. This role requires a comprehensive skill set to
 manage all aspects of a project's development lifecycle, from initial design and front-end interactivity 
 to database management and back-end security. </p>
 
 <h2>Key responsibilities</h2>
 <ul>
<Li>Build user interfaces : Develop interactive and responsive front-end components using HTML, CSS, and JavaScript, often with frameworks like React or Angular.</Li> 

<Li>Implement server-side logic : Write server-side code using Python and frameworks like Django or Flask to handle business logic and data processing.</Li> 

<Li>Manage databases : Work with databases (both SQL and NoSQL) to store, retrieve, and manage application data.</Li> 

<Li>Develop APIs : Build and integrate Application Programming Interfaces (APIs) to connect different parts of the application or external services.</Li> 

<Li>Ensure quality and performance : Write clean, efficient, and maintainable code, and perform testing and debugging to ensure the application is responsive and high-performing. Collaborate and deploy: Work with cross-functional teams throughout the product lifecycle, from planning to deployment.</Li>  
  </ul>
 <h2>Essential skills</h2>
 <ul>
<Li>Front-end : HTML, CSS, JavaScript, and potentially front-end frameworks like React or Angular.</Li>

<Li>Back-end : Python, and frameworks such as Django or Flask.</Li> 

<Li>Databases : Knowledge of SQL (e.g., PostgreSQL, MySQL) and NoSQL databases (e.g., MongoDB), along with ORMs like SQLAlchemy.</Li>

<Li>Other : Version control systems like Git, and understanding of concepts like CI/CD. </Li> 
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