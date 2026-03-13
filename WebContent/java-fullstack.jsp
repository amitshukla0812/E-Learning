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
    	String q="select* from course where id=26";
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
    <h5 class="card-title">Java FullStack</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  <p class="text-left" >
 <h2>Java FullStack Introduction</h2>
 <p>A Java Full Stack Developer is a software professional capable of working on both the front-end (client-side) and back-end (server-side) of a web application, using Java as a primary language for server-side development. 
 This role involves managing the entire application lifecycle, from designing user interfaces to developing server-side logic, managing databases, and ensuring seamless integration between client and server applications. </p>
  <h2>Key Responsibilities and Skills</h2>
  <ul>
<Li>Front-end Development : Building interactive user interfaces using technologies such as HTML, CSS, JavaScript, and frameworks like React, Angular, or Vue.js.</Li>

<Li>Back-end Development : Developing server-side logic, APIs (Application Programming Interfaces), and handling data processing using Java and frameworks like Spring Boot. This also includes designing and interacting with databases (both SQL and NoSQL).</Li>

<Li>Database Management   :  Designing, implementing, and managing databases to store and retrieve application data.</Li>

<Li>API Design and Integration : Creating and consuming RESTful APIs for communication between front-end and back-end components.</Li>

<Li>Deployment and Operations : Understanding and potentially managing aspects of application deployment, including containerization (Docker, Kubernetes), cloud platforms (AWS, Azure, GCP), and CI/CD pipelines.</Li>

<Li>Problem-Solving and Collaboration : Analyzing requirements, designing scalable solutions, troubleshooting issues, and effectively collaborating with other team members and stakeholders.</Li>

In essence, a Java Full Stack Developer possesses a comprehensive skill set that allows them to handle all layers of a web application, from the visual elements users interact with to the underlying server logic and data storage.

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