<%@ page import="conn.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<%@include file="nav.jsp"  %>
</head>
<body>
<div class="container" style="margin-top: 150px">
<%
    try
    {
    	Connection dbs = Conn.getCon();
    	String q="select* from course where id=24";
    	PreparedStatement ps=dbs.prepareStatement(q);
    	ResultSet rs = ps.executeQuery();
    	while(rs.next())
    	{
    		%>
<div class="card ">
  <div class="card-header">
   <%= rs.getString("course") %>
  </div>
  <div class="card-body">
    <h5 class="card-title">Core Java</h5>
    <p class="card-text text-justify"><%=rs.getString("Description") %></p>
  <p class="text-left" >
  <h1> Java introduction</h1>
Before we start developing Java programs, we need to learn about who invented Java and how the language survived for nearly 27 years, its history and its basic features. This section of the course will introduce you to Java.<br>

History<Br>
Features

<h2>2. Java Basics & Introduction to Eclipse</h2>
This section takes you to the post-installation phase of Java and introduces you to the most popular Java IDE, Eclipse. We will also discuss variables and arrays, datatypes, how to create packaged classes, and write your first Java code.

Post-install configuration
Compiling and executing
Variables and arrays
Create packaged classes
Writing a simple program
Data types
Using Eclipse
Eclipse shortcuts
<h2>3. Operators & Expressions</h2>
Operators in Java are the symbols that instruct the machine to perform an activity. These are mainly arithmetic, logical, binary, and boolean. This section clarifies the use of each operator in a statement or an expression. 

Arithmetic operators
Boolean operators
Logical operators
Binary operators
<h2>4. Control statements</h2>
Java uses decision-making statements and loops to control the execution of codes according to specific conditions. Here, you will learn about branching and iterative statements and understand what loops to use in Java and how they are functionally different. 

Branching statements
Iterative statements
Break & Continue with enhancements
While
For
Do..While
Goto Statement
Break and Continue statement
<h2>5. Java Object Oriented Programming</h2>
Java uses classes and objects in its programs, which is known as object-oriented programming. This section of the course will provide you with the basics of OOPs and ensure you understand the difference between class and object. In addition to that, you will learn a few more things that are essential when you are writing Java code, like reference variables, constructors and overloading constructors, member methods and overloading member methods, and so on.

Basics of OOPs
Fundamentals of class & object
New keyword
Reference variables
Member methods of a class
Constructors
Finalize method
Overloading member methods
Overloading contractors
Passing and returning objects with methods
Access control
Static methods
Static variables
Static block
Using final keyword
Unit testing using Junit-5
<h2>6. Inheritance</h2>
Java objects can inherit properties from their parent objects, and the concept of inheritance is an essential part of OOPs. If you know the implementation of inheritance in your codes, you can reuse methods from an existing class in your new classes, which is quite interesting. Here, you get a complete idea of inheritance, member accessibility, method overriding, preventing inheritance and some relevant topics. 

Basics of inheritance
Members accessibility in inheritance
Using super keyword
Multilevel inheritance
The sequence of execution of constructors in inheritance
Method overriding
Dynamic method dispatch
Abstract classes
Preventing overriding
Preventing inheritance
<h2>7. Exception handling</h2>
Exception handling in Java refers to handling runtime errors. Here, you will get to know what exceptions are and their types, as well as the use of try-and-catch keywords. There are a few predefined exceptions in Java, and you will know them in this section.

Fundamentals of exceptions
Types of exceptions
Using try and catch keywords
Multiple catches
Nesting of try blocks
Using throw keyword
Using throws keyword
Finally block
Some predefined exceptions and their usage
User defined exceptions
<h2>8. Interfaces</h2>
This part of the core Java course syllabus introduces you to Java interfaces, their purpose in a code, and how to implement them in a program.

Purpose of interface
Defining an interface
Implementing interfaces
Interface reference variables
Interface with variables
Extending interfaces
<h2>9. Multithreaded programming</h2>
Multithreaded programming refers to the execution of more than one part of a program to maximise the CPU’s memory usage. In this section, you will learn about the basics of threads and their model, defining threads, using multiple threads, and thread synchronisation. 

Basics of threads
Java threaded model
Defining threads using Runnable interface
Defining threads using Thread superclass
Multiple threads
Thread Priority values
Thread Synchronization using synchronized methods 
Thread Synchronization using synchronized blocks
<h2>10. Predefined Libraries</h2>
Java has multiple predefined libraries, which are basically codes of different classes that someone else wrote and help developers easily transform their ideas into coding. You will get to know some of the popular library classes during the course.

Using String class
Using java.lang package
Working with Data & Time
Utility framework
Collection framework
I/O framework 
  
  
  
  
  
  </p>
  </div>
  <div class="card-footer text-muted">
   
  </div>
</div>
<%     	
}
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    
    %>
</div>
</body>
</html>