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
String id = request.getParameter("id");

int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "delete from course where id=?";
    PreparedStatement ps = dbs.prepareStatement(q);
   
    ps.setString(1, id);
    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("CourseData.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("CourseData.jsp");
    rd.include(request, response);
}
%>
</body>
</html>