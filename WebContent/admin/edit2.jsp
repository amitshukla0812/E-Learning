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
	String q="select*from register where id=?";
	PreparedStatement ps= dbs.prepareStatement(q);
	ps.setString(1,id);
	ResultSet rs= ps.executeQuery();
	while(rs.next())
	{
	%>
	<div class="container">
    <h2 class="text-center">Online Registration Form</h2>
    <form action="registrationUpdateEdit2.jsp" method="post">

        <!-- Row 1 -->
        <div class="row">
        <div class="mb-3 col-6">
                <label class="form-label" for="id">User Id</label>
                <input type="text" name="id" placeholder="ide" id="id" 
                       required="required" class="form-control" readonly="readonly" value="<%=rs.getString("id")%>">
            </div>
            <div class="mb-3 col-6">
                <label class="form-label" for="user">User Name</label>
                <input type="text" name="user" placeholder="User Name" id="user" 
                       required="required" class="form-control"  value="<%=rs.getString("user")%>">
            </div>

            <div class="mb-3 col-6">
                <label class="form-label" for="email">Email</label>
                <input type="email" name="email" placeholder="Email..." id="email" 
                       required="required" class="form-control"  value="<%=rs.getString("email")%>">
            </div>
        </div>

        <!-- Row 2 -->
        <div class="row">
            <div class="mb-3 col-6">
                <label class="form-label" for="course">Course</label>
                <select class="form-select" name="course" id="course" required="required"  value="<%=rs.getString("course")%>">
                    <option value="">--Select Course--</option>
                    <option value="java">Java</option>
                    <option value="C++">C++</option>
                    <option value="python">Python</option>
                    <option value="C">C</option>
                    <option value=".Net">.Net</option>
                </select>
            </div>

            <div class="mb-3 col-6">
                <label class="form-label" for="phone">Phone</label>
                <input type="text" name="phone" placeholder="Phone" id="phone" 
                       required="required" class="form-control"  value="<%=rs.getString("phone")%>">
            </div>
        </div>

        <!-- Password -->
        <div class="mb-3">
            <label class="form-label" for="password">Password</label>
            <input type="password" name="password" placeholder="Password" id="password" 
                   required="required" class="form-control"  value="<%=rs.getString("password")%>">
        </div>

        <!-- State -->
        <div class="mb-3">
            <label class="form-label" for="state">State</label>
            <select class="form-select" name="state" id="state" required="required"  value="<%=rs.getString("state")%>">
                <option value="">--Select State--</option>
                <option value="delhi">Delhi</option>
                <option value="mumbai">Mumbai</option>
                <option value="patna">Patna</option>
                <option value="lucknow">Lucknow</option>
                <option value="pune">Pune</option>
            </select>
        </div>

        <!-- Address -->
        <div class="mb-3">
            <label class="form-label" for="address">Address</label>
            <textarea rows="3" cols="3" name="address" id="address" 
                      class="form-control"  value="<%=rs.getString("address")%>"></textarea>
        </div>

        <!-- Submit Button -->
        <div class="mb-3 text-center">
            <button type="submit" class="btn btn-lg btn-success">Send</button>
            <a type="button" class="btn btn-lg btn-success" href="getAllRegistration.jsp">Back</a>
        </div>

    </form>
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