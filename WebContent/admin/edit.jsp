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
	String q="select*from student where id=?";
	PreparedStatement ps= dbs.prepareStatement(q);
	ps.setString(1,id);
	ResultSet rs= ps.executeQuery();
	while(rs.next())
	{
	%>
	<div class="container">
    <h2 class="text-center mb-4">Online Registration Form</h2>
    <form action="StudentUpdate.jsp" method="post">

        <!-- Row 1 -->
        <div class="row">
        <div class="mb-3 col-4">
                <label class="form-label" for="id">User Id</label>
                <input type="text" name="id" id="id" 
           placeholder="id "required class="form-control" readonly="readonly"  value="<%=rs.getString("id")%>">
            </div>
        
            <div class="mb-3 col-4">
                <label class="form-label" for="user">User Name</label>
                <input type="text" name="user" id="user" 
                       placeholder="Enter User Name" required class="form-control" value="<%=rs.getString("user")%>">
            </div>

            <div class="mb-3 col-4">
                <label class="form-label" for="email">Email</label>
                <input type="email" name="email" id="email" 
                       placeholder="Enter Email" required class="form-control"  value="<%=rs.getString("email")%>">
            </div>
        </div>

        <!-- Row 2 -->
        <div class="row">
            <div class="mb-3 col-4">
                <label class="form-label" for="phone">Phone</label>
                <input type="text" name="phone" id="phone" 
                       placeholder="Enter Phone Number" required class="form-control" value="<%=rs.getString("phone")%>">
            </div>

            <div class="mb-3 col-4">
                <label class="form-label" for="course">Course</label>
                <select class="form-select" name="course" id="course" required   value="<%=rs.getString("course")%>">
                    <option value="">-- Select Course --</option>
                    <option value="java">Java</option>
                    <option value="C++">C++</option>
                    <option value="python">Python</option>
                    <option value="C">C</option>
                    <option value=".Net">.Net</option>
                </select>
            </div>
        </div>
        <!-- row 3 -->
        <div class="row">
        <div class="mb-3 col-3">
            <label class="form-label" for="password">Password</label>
            <input type="password" name="password" id="password" 
                   placeholder="Enter Password" required class="form-control"    value="<%=rs.getString("password")%>">
        </div>
            <!-- City -->
           <div class="mb-3 col-3">
            <label class="form-label" for="city">City</label>
            <input type="text" name="city" id="city" 
                   placeholder="city" required class="form-control"    value="<%=rs.getString("city")%>">
           </div>
           <div class="mb-3 col-3">
                <label class="form-label" for="amount">Amount</label>
                <input type="number" name="amount" id="amount" 
                       placeholder="amount" required class="form-control"   value="<%=rs.getString("amount")%>">
            </div>
        </div>
        
        <!-- State -->
        <div class="row">
        <div class="mb-3 col-4">
            <label class="form-label" for="state">State</label>
            <select class="form-select" name="state" id="state" required   value="<%=rs.getString("state")%>">
                <option value="">-- Select State --</option>
                <option value="delhi">Delhi</option>
                <option value="mumbai">Mumbai</option>
                <option value="patna">Patna</option>
                <option value="lucknow">Lucknow</option>
                <option value="pune">Pune</option>
            </select>
        </div>
        <!-- Branch -->
            <div class="mb-3 col-4">
            <label class="form-label" for="branch">Branch</label>
            <input type="text" name="branch" id="branch" 
                   placeholder="branch" required class="form-control"   value="<%=rs.getString("branch")%>">
            </div>
           </div>
        <!-- Address -->
        <div class="row">
        <div class="mb-3 col-4">
            <label class="form-label" for="address">Address</label>
            <textarea rows="3" name="address" id="address" 
                      placeholder="Enter Address" class="form-control"  value="<%=rs.getString("address")%>"></textarea>
        </div>
         <div class="mb-3 col-4">
                <label class="form-label" for="country">Country</label>
                <input type="text" name="country" id="country" 
                       placeholder="country" required class="form-control"  <a type="button" class="btn btn-lg btn-success" href="AllData.jsp">Back</a>>
            </div>
         </div>
         
        <!-- Submit Button -->
        <div class="mb-3 text-center">
            <button type="submit" class="btn btn-lg btn-success">button</button>
            <a type="button" class="btn btn-lg btn-success" href="AllData.jsp">Back</a>
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