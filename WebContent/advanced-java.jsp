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
    	String q="select* from course where id=25";
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
    <h5 class="card-title">Advanced Java</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  <p class="text-left" >
 
     <h2>Advanced Java</h2>



<p>

Advanced Java refers to the specialized and enterprise-level features of Java programming that go beyond Core Java (J2SE).
It focuses on web-based, network-based, and enterprise-level applications such as web apps, database-driven apps, and distributed systems.
</p>




 <h4>Key Components of Advanced Java</h4>
<ul>
<Li>a. JDBC (Java Database Connectivity)

 Used for connecting Java applications to databases.
 Enables CRUD operations (Create, Read, Update, Delete).
 Example: MySQL, Oracle, PostgreSQL.</Li>

<Li>b. Servlets

 Server-side programs that handle client requests and generate dynamic responses.
 Act as controllers between client and database/business logic.</Li>

<Li>c. JSP (Java Server Pages)

 Simplifies web development by embedding Java code in HTML pages.
 Easier to design web interfaces compared to Servlets.</Li>

<Li>d. Java Beans

 Reusable software components for encapsulating business logic.
 Used in combination with JSP and Servlets for MVC (Model,View,Controller) design.</Li>

<Li>e. RMI (Remote Method Invocation)

 Allows invoking methods of an object running on another JVM (used in distributed applications).</Li>

<Li>f. EJB (Enterprise Java Beans)

Used for building scalable, transactional, and secure enterprise applications.
 Manages transactions and business logic.</Li>

<Li>g. JNDI (Java Naming and Directory Interface)

 Used for directory services like locating resources (databases, EJBs, etc.) in a network.</Li>

<Li>h. JMS (Java Message Service)

Enables communication between different components of a distributed application using messages (asynchronous communication).</Li>

</ul>

 <h4>Architecture (MVC Model)</h4>
<ul>
Most Advanced Java web applications use MVC architecture:

<Li>Model : Business logic and data (JavaBeans, Database).</Li>
<Li>View : Presentation (JSP, HTML, CSS).</Li>
<Li>Controller : Request handling (Servlets).</Li>


</ul>
 <h4>Frameworks and Tools</h4>
<ul>
Advanced Java is often combined with modern frameworks:

<Li>Spring Framework : Dependency injection, MVC, REST APIs.</Li>
<Li>Hibernate : Object Relational Mapping (ORM) for databases.</Li>
<Li>Struts, JSF, JPA : Enterprise-level frameworks.</Li>

</ul>

<h4> Applications of Advanced Java</h4>
<ul>
 <Li>Web Applications (e.g., online portals, e-commerce sites)</Li>
 <Li> Enterprise Systems (e.g., banking, ERP, CRM)</Li>
  <Li>Cloud-based services</Li>
  <Li>APIs and Microservices</Li>
  <Li>Android backend servers</Li>

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