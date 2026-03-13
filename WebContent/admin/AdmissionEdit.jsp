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
String phone = request.getParameter("phone");
String course = request.getParameter("course");
String password = request.getParameter("password");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");
String address = request.getParameter("address");
int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "update admission set user=?,email=?,phone=?,course=?,password=?,city=?,state=?,country=?,address=? where id=?";
    PreparedStatement ps = dbs.prepareStatement(q);
    ps.setString(1, user);
    ps.setString(2, email);
    ps.setString(3, phone);
    ps.setString(4, course);
    ps.setString(5, password);
    ps.setString(6, city);
    ps.setString(7, state);
    ps.setString(8, country);
    ps.setString(9, address);
    ps.setString(10, id);

    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("AdmissionDataTable.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("editAdmissionTable.jsp");
    rd.include(request, response);
}
%>
</body>
</html>