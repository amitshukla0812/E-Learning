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
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String message = request.getParameter("message");

int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "insert into contactdata(firstname,lastname,email,phone,message)values(?,?,?,?,?)";
    PreparedStatement ps = dbs.prepareStatement(q);
    ps.setString(1, firstname);
    ps.setString(2, lastname);
    ps.setString(3, email);
    ps.setString(4, phone);
    ps.setString(5, message);
    

    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("admin/ContactDataTable.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
    rd.include(request, response);
}
%>
</body>
</html>
