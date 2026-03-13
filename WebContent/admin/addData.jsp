<%@ page import="conn.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%
String user = request.getParameter("user");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String course = request.getParameter("course");
String password = request.getParameter("password");
String city = request.getParameter("city");
String amount = request.getParameter("amount");
String state = request.getParameter("state");
String branch = request.getParameter("branch");
String address = request.getParameter("address");
String country = request.getParameter("country");
int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "insert into student(user,email,phone,course,password,city,amount,state,branch,address,country)values(?,?,?,?,?,?,?,?,?,?,?)";
    PreparedStatement ps = dbs.prepareStatement(q);
    ps.setString(1, user);
    ps.setString(2, email);
    ps.setString(3, phone);
    ps.setString(4, course);
    ps.setString(5, password);
    ps.setString(6, city);
    ps.setString(7, amount);
    ps.setString(8, state);
    ps.setString(9, branch);
    ps.setString(10, address);
    ps.setString(11, country);

    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("AllData.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("addStudent.jsp");
    rd.include(request, response);
}
%>
</body>
</html>
