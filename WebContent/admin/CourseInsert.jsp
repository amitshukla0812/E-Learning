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

String course = request.getParameter("course");
String description = request.getParameter("description");
String duration = request.getParameter("duration");
String fees = request.getParameter("fees");
String startdate= request.getParameter("startdate");
String enddate = request.getParameter("enddate");
String project = request.getParameter("project");
String trainer = request.getParameter("trainer");
int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "insert into course (course,description,duration,fees,startdate,enddate,project,trainer)values(?,?,?,?,?,?,?,?)";
    PreparedStatement ps = dbs.prepareStatement(q);
    ps.setString(1, course);
    ps.setString(2, description);
    ps.setString(3, duration);
    ps.setString(4, fees);
    ps.setString(5, startdate);
    ps.setString(6, enddate);
    ps.setString(7, project);
    ps.setString(8, trainer);
    

    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("CourseData.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("addCourse.jsp");
    rd.include(request, response);
}
%>
</body>
</html>