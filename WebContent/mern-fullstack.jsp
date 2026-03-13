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
    	String q="select* from course where id=27";
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
    <h5 class="card-title">Mern FullStack</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  <p class="text-left" >
<h2>Mern FullStack Introduction</h2>
A MERN stack developer is a software engineer who builds web applications using the MERN stack:
 MongoDB, Express.js, React, and Node.js. They are full-stack developers capable of handling both
 the front-end (user interface) and back-end (server, database) development using primarily 
 JavaScript-based technologies. Their skills include front-end fundamentals like HTML, CSS,
  and JavaScript, as well as back-end technologies like Node.js, Express.js, and MongoDB database management.  

  <h2>Core skills</h2>
  <ul>
<Li>MongoDB : Database management, including data modeling, querying, and indexing.</Li>
<Li>Express.js : Building server-side applications and RESTful APIs.</Li>
<Li>React : Developing dynamic and interactive user interfaces.</Li>
<Li>Node.js : Writing server-side code and building the back-end of applications.</Li> 
 Essential technical skills
<Li>JavaScript (ES6+) : Strong understanding of modern JavaScript syntax and concepts.</Li> 
<Li>HTML and CSS : Fundamentals for building the structure and styling of web pages.</Li>
<Li>RESTful APIs : Creating and consuming APIs for communication between the front-end and back-end.</Li>
<Li>State Manage ment : Techniques using tools like Redux or the Context API.</Li> 
<Li>Git : Version control for managing code.</Li> 
</ul>
<h2>Key responsibilities</h2>
Developing applications from start to finish, including the user interface, server logic, and database integration.<Br>
Translating stakeholder requirements into technical solutions.<Br>
Collaborating with other developers, designers, and specialists to ensure a successful application.<Br>
Staying current with new technologies and best practices within the MERN stack and web development. 
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