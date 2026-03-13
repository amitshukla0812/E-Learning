<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="adminNav.jsp" %>
</head>
<body>
<%
session=request.getSession();
String email=(String)session.getAttribute("email").toString();
%>
<center><h4><%=email %></h4></center>
</body>
</html>