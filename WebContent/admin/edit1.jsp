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
String id=request.getParameter("id");

try
{
	Connection dbs=Conn.getCon();
	String q="select*from course where id=?";
	PreparedStatement ps= dbs.prepareStatement(q);
	ps.setString(1,id);
	ResultSet rs= ps.executeQuery();
	while(rs.next())
	{
	%>
	<div class="container flux">
    <h2 class="text-center mb-4">Add Course</h2>
    
    <form action="Courseedit.jsp" method="post">
        
            <div class="row">
            
            <div class="mb-3 col-4">
                <label class="form-label" for="id">User Id</label>
                <input type="text" name="id" placeholder="id" id="id" 
                       required class="form-control"  readonly="readonly"   value="<%=rs.getString("id")%>">
            </div>
            <div class="mb-3 col-4">
                <label class="form-label" for="course">Course</label>
                <select class="form-select" name="course" id="course" required  value="<%=rs.getString("course")%>">
                    <option value="">-- Select Course --</option>
                    <option value="java">Java</option>
                    <option value="C++">C++</option>
                    <option value="python">Python</option>
                    <option value="C">C</option>
                    <option value=".Net">.Net</option>
                </select>
            </div>

            
         </div>
         
         <div class="row">
            <div class="mb-3 col-4">
                <label class="form-label" for="duration">Duration</label>
                <select class="form-select" name="duration" id="duration" required  value="<%=rs.getString("duration")%>">
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
                <select class="form-select" name="fees" id="Fees" required value="<%=rs.getString("fees")%>">
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
                <select class="form-select" name="project" id="Project" required  value="<%=rs.getString("project")%>">
                    <option value="">-- Select Project --</option>
                    <option value="Mini Project">Mini Project</option>
                    <option value="Major Project">Major Project</option>
                    <option value="Medium Project">Medium Project</option>
              </select>
              </div>
            <div class="mb-3 col-4">
                <label class="form-label" for="trainer_name">Trainer Name</label>
                <input type="text" name="trainer" placeholder="Trainer Name" id="trainer_name" 
                       required class="form-control" value="<%=rs.getString("trainer")%>">
            </div>
         </div>
         <div class="mb-3 col-4">
                 <label for="description" class="form-label">Description</label>
                 <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter description here..." value="<%=rs.getString("description")%>"></textarea>
                      </div>
            <div class="text">
                <button type="submit" class="btn btn-success btn-lg">Submit</button>
                <a type="button" class="btn btn-lg btn-success" href="CourseData.jsp">Back</a>
            </div>

        </div>
    </form>
</div>
	<% 
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>