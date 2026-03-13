<%@ page import="conn.Conn" %>
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

String name = request.getParameter("name");
String skills = request.getParameter("skills");
String experience= request.getParameter("experience");
Part file = request.getPart("file");
String originalFileName =extractFileName(part);
String contentType=part.getContentType();

int i = 0;
try {
    Connection dbs = Conn.getCon();
    String q = "insert into teacher(name,skills,experience,file)values(?,?,?,?)";
    PreparedStatement ps = dbs.prepareStatement(q);
    ps.setString(1, name);
    ps.setString(2, skills);
    ps.setString(3, experience);
    ps.setString(4, file);
    
    i = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}

if(i > 0) {
    response.sendRedirect("TeacherDataTa.jsp");
} else {
    out.print("Something went wrong!");
    RequestDispatcher rd = request.getRequestDispatcher("Teach.jsp");
    rd.include(request, response);
}
%>
</body>
</html>