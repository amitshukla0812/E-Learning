<%@ page import="conn.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%
String id=request.getParameter("id");

try
{
	Connection dbs=Conn.getCon();
	String q="select*from admission where id=?";
	PreparedStatement ps= dbs.prepareStatement(q);
	ps.setString(1,id);
	ResultSet rs= ps.executeQuery();
	while(rs.next())
	{
	%>
	 <div class="site-section">
      <div class="container">
    <h2 class="text-center">Admission Form</h2>
    <form action="AdmissionEdit.jsp" method="post">


       <div class="mb-3 col-4">
                <label class="form-label" for="id">User Id</label>
                <input type="text" name="id" placeholder="id" id="id" 
                       required class="form-control"  readonly="readonly"   value="<%=rs.getString("id")%>">
            </div>



        <!-- Row 1 -->
        <div class="row">
            <div class="mb-3 col-6">
                <label class="form-label" for="user">User Name</label>
                <input type="text" name="user" placeholder="User Name" id="user" 
                       required="required" class="form-control" value="<%=rs.getString("user")%>">
            </div>

            <div class="mb-3 col-6">
                <label class="form-label" for="email">Email</label>
                <input type="email" name="email" placeholder="Email..." id="email" 
                       required="required" class="form-control" value="<%=rs.getString("email")%>">
            </div>
        </div>

        <!-- Row 2 -->
        <div class="row">
            <div class="mb-3 col-6">
                <label class="form-label" for="course">Course</label>
                <select class="form-select form-control" name="course" id="course" required="required" value="<%=rs.getString("course")%>" >
                    <option value="">--Select Course--</option>
                    <option value="Core java">Core Java</option>
                    <option value="Advanced Java">Advanced Java</option>
                    <option value="Java FullStack">Java FullStack</option>
                    <option value="Mern FullStack">Mern FullStack</option>
                     <option value="Python Fullstack">Python Fullstack</option>
                      <option value="Mean FullStack">Mean FullStack</option>
                   <option value="AI/ML">AI/ML</option>
                      <option value="Data Science">Data Science</option>
                       <option value="Data Analytics">Data Analytics</option>
                </select>
            </div>

            <div class="mb-3 col-6">
                <label class="form-label" for="phone">Phone</label>
                <input type="text" name="phone" placeholder="Phone" id="phone" 
                       required="required" class="form-control" value="<%=rs.getString("phone")%>">
            </div>
        </div>

        <!-- Password -->
        <div class ="row ">
        <div class="mb-3 col-6">
            <label class="form-label" for="password">Password</label>
            <input type="password" name="password" placeholder="Password" id="password" 
                   required="required" class="form-control" value="<%=rs.getString("password")%>">
        </div>
            <div class="mb-3 col-6">
            <label class="form-label" for="City">City</label>
            <input type="city" name="city" placeholder="city" id="city" 
                   required="required" class="form-control" value="<%=rs.getString("city")%>">
        </div>
        </div>
        <!-- State -->
        <div class="row">
        <div class="mb-3 col-6">
            <label class="form-label" for="state">State</label>
            <select class="form-select form-control" name="state" id="state" required="required" value="<%=rs.getString("state")%>">
                <option value="">--Select State--</option>
                <option value="delhi">Delhi</option>
                <option value="mumbai">Mumbai</option>
                <option value="patna">Patna</option>
                <option value="lucknow">Lucknow</option>
                <option value="pune">Pune</option>
            </select>
        </div>
         
            <div class="mb-3 col-6">
            <label class="form-label" for="Country">Country</label>
            <input type="country" name="country" placeholder="country" id="country" 
                   required="country" class="form-control" value="<%=rs.getString("country")%>">
        </div>
        </div>
        <!-- Address -->
        <div class="mb-3">
            <label class="form-label" for="address">Address</label>
            <textarea rows="3" cols="3" name="address" id="address" 
                      class="form-control" value="<%=rs.getString("address")%>"></textarea>
        </div>

        <!-- Submit Button -->
        <div class="mb-3 text-center">
            <button type="submit" class="btn btn-lg btn-success">Send</button>
        </div>

    </form>
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
</body>
</html>