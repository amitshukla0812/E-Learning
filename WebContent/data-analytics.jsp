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
    	String q="select* from course where id=32";
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
    <h5 class="card-title">Data Analytics</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  <p class="text-left" >
<h2>Data Analytics Introduction</h2>
<p>A data analyst syllabus typically includes foundational statistics, programming
languages like Python and SQL, data visualization tools such as Power BI and Tableau,
and Excel for business analytics. Advanced topics may cover machine learning basics, 
big data concepts, and project-based learning to apply skills to real-world problems. </p>

<h2>Core skills and tools</h2>
<ul>
<Li>Statistics and Probability: Descriptive statistics, hypothesis testing, regression, and probability distributions.</Li>
</ul>
<h2>Programming</h2>
<ul>
<Li>Python  : Covers fundamentals, with libraries like NumPy for numerical operations and Pandas
 for data manipulation, plus libraries for visualization like Matplotlib and Seaborn.</Li>

<Li>SQL : For querying and managing databases, including data manipulation, joins, and advanced queries</Li>
</ul>
<h2>Data Visualization</h2>
<ul>
<Li>Microsoft Excel : PivotTables, VLOOKUP, and creating charts and dashboards.</Li>

<Li>Tableau : Creating reports, charts, dashboards, and using calculations and filters.</Li>

<Li>Power BI : Data modeling with DAX, creating interactive reports and dashboards, and publishing workbooks.</Li>

<Li>Data Wrangling : Data cleaning techniques, handling missing values, data transformation using tools</Li>
 like Power Query, and Exploratory Data Analysis (EDA).

</ul>
<h2>Advanced and optional topics</h2>
<ul>
<Li>Machine Learning : Introduction to supervised and unsupervised learning, and model evaluation.</Li>

<Li>Big Data : An introduction to big data technologies like Hadoop and Apache Spark.</Li>

<Li>AI in Analytics : Emerging topics like using AI for automation and anomaly detection. </Li>
</ul>
<h2>Project and application</h2>
<ul>
<Li>Capstone Project : A final project to apply all learned skills to a real-world dataset and present findings.</Li>

<Li>Version Control : Using tools like GitHub to manage and showcase projects.</Li> 
 
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