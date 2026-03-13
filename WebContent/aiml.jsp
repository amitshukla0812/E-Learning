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
    	String q="select* from course where id=30";
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
    <h5 class="card-title">AI/ML</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  
 
  <p class="text-left" >
 <h2>AI/ML Introduction</h2>
 <p>An AI/ML developer is a software engineer who builds and integrates
 artificial intelligence and machine learning into applications. 
 They combine programming skills with AI/ML principles to create 
 intelligent systems that can learn from data and automate processes. 
 Their work includes data preparation, model implementation, and 
 deploying these models into software, requiring expertise in languages 
 like Python and understanding of machine learning algorithms and the 
 software development lifecycle. </p>


 <h2>Core responsibilities</h2>
 <ul>
<Li>Design and code : Create applications with AI/ML components, write code to build and integrate models.</Li>

<Li>Data management : Collect, preprocess, and manage data for training and running models.</Li>

<Li>Model implementation : Select, implement, and test appropriate machine learning algorithms and models.</Li>

<Li>Deployment : Integrate AI/ML models into software applications, ensuring scalability, reliability, and security.</Li>

<Li>Maintenance and refinement : Monitor model performance and make necessary adjustments for improvement. </Li>
</ul>
<h2>Essential skills</h2>
<ul>
<Li>Programming : Proficiency in languages such as Python is crucial, along with an understanding of 
core programming concepts like data structures and control flow.</Li>


<Li>AI/ML principles : Knowledge of AI and machine learning algorithms, including neural networks. </Li>

<Li>Data science : Ability to work with data, including preprocessing and analysis. </Li>

<Li>Software development : Familiarity with the software development lifecycle and best practices.</Li>
 
</ul>
      <h2>Related roles</h2>
      <ul>
<Li>Machine Learning Engineer : Often more focused on building, training, and fine-tuning the AI/ML models themselves.</Li> 

<Li>AI Engineer : May focus more on shipping products using existing AI tools and integrating AI capabilities, but the roles can have overlap.</Li> 
 
<Li>Data Scientist : Typically focuses on analyzing data, identifying patterns, and building the initial models, sometimes collaborating with AI/ML 
developers who integrate the models into production systems. </Li> 
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