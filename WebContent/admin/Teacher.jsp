<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Form</title>
<%@ include file="adminNav.jsp" %>
</head>
<body>
<div class="container">
    <h2 class="text-center mt-3 mb-4">Teacher Form</h2>
    
    <form action="../FileUploadServlet" method="post"  enctype="multipart/form-data">

        <!-- Row 1 -->
        <div class="row">
            <div class="mb-3 col-6">
                <label class="form-label" for="teacherName">Teacher Name</label>
                <input type="text" name="name" placeholder="Enter name..." id="teacherName" 
                       required class="form-control">
            </div>

            <div class="mb-3 col-6">
                <label class="form-label" for="skills">Skills</label>
                <input type="text" name="skills" placeholder="Enter skills..." id="skills" 
                       required class="form-control">
            </div>
        </div>

           <!-- Row 3 -->
        <div class="row">
            <div class="mb-3 col-6">
                <label class="form-label" for="experience">Experience</label>
                <input type="text" name="experince" placeholder="Enter experience..." id="experience" 
                       required class="form-control">
            </div>
               <div class="mb-3 col-6">
                <label class="form-label" for="file">File</label>
                <input type="file" name="file" placeholder="Enter ..." id="file" 
                       required class="form-control">
            </div>
            
        </div>

        <!-- Submit Button -->
        <div class="mb-3 text-center">
            <button type="submit" class="btn btn-lg btn-success">Submit</button>
        </div>

    </form>
</div>
</body>
</html>
