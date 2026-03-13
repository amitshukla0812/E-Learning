<%@ page import="conn.Conn" %>
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
String course = request.getParameter("course");
String phone = request.getParameter("phone");
String password = request.getParameter("password");
String state = request.getParameter("state");
String address = request.getParameter("address");

int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "insert into register(user, email, course, phone, password, state, address)values(?,?,?,?,?,?,?)";
    PreparedStatement ps = dbs.prepareStatement(q);
    ps.setString(1, user);
    ps.setString(2, email);
    ps.setString(3, course);
    ps.setString(4, phone);
    ps.setString(5, password);
    ps.setString(6, state);
    ps.setString(7, address);

    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("SessionLogin.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("Onlineregistration.jsp");
    rd.include(request, response);
}
%>
</body>
</html>
