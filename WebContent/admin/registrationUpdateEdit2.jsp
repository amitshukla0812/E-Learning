<%@ page import="conn.*" %>
<%@ page import="java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
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
    String q = "update register set user=?,email=?,course=?,phone=?,password=?,state=?,address=? where id=?";
    PreparedStatement ps = dbs.prepareStatement(q);
    ps.setString(1, user);
    ps.setString(2, email);
    ps.setString(3, course);
    ps.setString(4, phone);
    ps.setString(5, password);
     ps.setString(6, state);
    ps.setString(7, address);
    ps.setString(8, id);
    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("getAllRegistration.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("edit2.jsp");
    rd.include(request, response);
}
%>
</body>
</html>