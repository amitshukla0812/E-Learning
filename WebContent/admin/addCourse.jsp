<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Course</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@ include file="adminNav.jsp" %>
</head>
<body>

<div class="container flux">
    <h2 class="text-center mb-4">Add Course</h2>
    
    <form action="CourseInsert.jsp" method="post">
        
            <div class="row">
            <div class="mb-3 col-4">
                <label class="form-label" for="course">Course</label>
                <select class="form-select" name="course" id="course" required>
                    <option value="">-- Select Course --</option>
                    <option value="Core java">Core Java</option>
                    <option value="Advanced Java">Advanced Java</option>
                    <option value="Java FullStack">Java FullStack</option>
                    <option value="Mern FullStack">Mern FullStack</option>
                     <option value="Python Fullstack">Python Fullstack</option>
                      <option value="Mean FullStack">Mean FullStack</option>
                   <option value="AI/ML">AI/ML</option>
                      <option value="Data Science">Data Science</option>
                       <option value="Data Analytics">Data Analytics</option>
                </select>
            </div>
               <div class="mb-3 col-4">
                 <label for="description" class="form-label">Description</label>
                 <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter description here..."></textarea>
                      </div>

            
         </div>
         
         <div class="row">
            <div class="mb-3 col-4">
                <label class="form-label" for="duration">Duration</label>
                <select class="form-select" name="duration" id="duration" required>
                    <option value="">-- Select Duration --</option>
                    <option value="2 Months">2 Months</option>
                    <option value="4 Months">4 Months</option>
                    <option value="6 Months">6 Months</option>
                    <option value="8 Months">8 Months</option>
                    <option value="1 year">1 year</option>
                </select>
            </div>
            <div class="mb-3 col-4">
                <label class="form-label" for="Fees">Fees</label>
                <select class="form-select" name="fees" id="Fees" required>
                    <option value="">-- Select Fees --</option>
                    <option value="10,000">10,000</option>
                    <option value="20,000">20,000</option>
                    <option value="40,000">40,000</option>
                    <option value="60,000">60,000</option>
                    
                </select>
            </div>
            
               </div>
               <div class ="row">
                 <div class="mb-3 col-4">
                <label class="form-label" for="startdate">Start Date</label>
                <input type="date" name="startdate" placeholder="startdate" id="startdate" 
                       required class="form-control">
                  </div>
                  <div class="mb-3 col-4">
                <label class="form-label" for="enddate">End Date</label>
                <input type="date" name="enddate" placeholder="enddate" id="enddate" 
                       required class="form-control">
                  </div>
                  </div>
            <div class="row">
            <div class="mb-3 col-4">
                <label class="form-label" for="Project">Project</label>
                <select class="form-select" name="project" id="Project" required>
                    <option value="">-- Select Project --</option>
                    <option value="Mini Project">Mini Project</option>
                    <option value="Major Project">Major Project</option>
                    <option value="Medium Project">Medium Project</option>
              </select>
              </div>
            <div class="mb-3 col-4">
                <label class="form-label" for="trainer_name">Trainer Name</label>
                <input type="text" name="trainer" placeholder="Trainer Name" id="trainer_name" 
                       required class="form-control">
            </div>
            
         </div>
            <div class="text">
                <button type="submit" class="btn btn-success btn-lg">Submit</button>
            </div>

        </div>
    </form>
</div>

</body>
</html>
