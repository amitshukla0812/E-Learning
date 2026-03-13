<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Admin Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="getAllRegistration.jsp">getAllRegistration</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Services
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="addStudent.jsp">Add_Student</a></li>
            <li><a class="dropdown-item" href="AllData.jsp">All_StudentData</a></li>
          <li><a class="dropdown-item" href="addCourse.jsp">All_Course</a></li>
            <li><a class="dropdown-item" href="CourseData.jsp">All_CourseData</a></li>
            <li ><hr class="dropdown-divider"></li>
           
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ContactDataTable.jsp">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Teacher.jsp">Teacher</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="TeacherDataTable.jsp">Teacher-View</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Admission.jsp">Admission-Form</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="AdmissionDataTable.jsp">Admission-Data</a>
        </li>
        <form class="d-flex">
        <ul class="navbar-nav ">
        <li class="nav-item">
          <a class="nav-link" href="logout.jsp">logout</a>
        </li>
        
        </ul>
        </form>
    </div>
  </div>
</nav>
</body>
</html>