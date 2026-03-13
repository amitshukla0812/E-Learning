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
    	String q="select* from course where id=31";
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
    <h5 class="card-title">Data Science</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  <p class="text-left" >
 <h2>Data Science Introduction</h2>
 <p>A data science syllabus typically includes programming (Python, R, SQL), 
 statistics and probability, mathematics (linear algebra, calculus), and
 machine learning. It also covers data wrangling and visualization, big 
 data technologies (like Hadoop and Spark), and often includes specializations 
 in areas like deep learning or natural language processing, culminating in projects. </p>



<h2>Core subjects</h2>
<ul>
<Li>Programming Languages : Python (with libraries like Pandas, NumPy, Scikit-learn) and R are
essential for data manipulation, analysis, and machine learning. SQL is crucial for database
 querying and management.</Li>


<Li>Mathematics and Statistics : Foundational knowledge in statistics, probability, linear algebra,
 and calculus is critical for understanding and building models.</Li>


<Li>Data Wrangling and Exploration : This involves cleaning, transforming, and manipulating data.
It includes handling missing values, outliers, and feature engineering.</Li>

<Li>Data Visualization : Techniques and tools (like Matplotlib, Seaborn, Tableau, or Power BI) 
are used to create visual representations of data patterns. </Li>

</ul>
<h2>Advanced and specialized topics</h2>
<ul>
<Li>Machine Learning : Covers supervised and unsupervised learning algorithms, model evaluation, 
regularization, and hyperparameter tuning.</Li>

<Li>Big Data Technologies : Fundamentals of distributed computing, using tools like Hadoop and
Spark for processing large datasets.</Li>

<Li>Deep Learning : Introduction to neural networks, CNNs, and RNNs, often using frameworks like
 TensorFlow or PyTorch.</Li>


<Li>Natural Language Processing (NLP) : Techniques for processing and analyzing text data,
 such as sentiment analysis and chatbots.</Li>


<Li>Cloud Computing : Understanding cloud platforms like AWS, Azure, or Google Cloud for deploying 
and managing data science solutions. </Li>
</ul>

 <h2>Practical application</h2>
 <ul>
<Li>Ethics and Data Privacy : Discusses responsible data usage, ethical considerations, and relevant laws. </Li>

<Li>Projects and Capstones : Hands-on experience through real-world projects and case studies is a
 key component, often a final capstone project. </Li>
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