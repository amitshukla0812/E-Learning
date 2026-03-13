<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@ include file="adminNav.jsp" %>
</head>
<body>
<div class="container">
    <h2 class="text-center mb-4">Online Registration Form</h2>
    <form action="addData.jsp" method="post">

        <!-- Row 1 -->
        <div class="row">
            <div class="mb-3 col-4">
                <label class="form-label" for="user">User Name</label>
                <input type="text" name="user" id="user" 
                       placeholder="Enter User Name" required class="form-control">
            </div>

            <div class="mb-3 col-4">
                <label class="form-label" for="email">Email</label>
                <input type="email" name="email" id="email" 
                       placeholder="Enter Email" required class="form-control">
            </div>
        </div>

        <!-- Row 2 -->
        <div class="row">
            <div class="mb-3 col-4">
                <label class="form-label" for="phone">Phone</label>
                <input type="text" name="phone" id="phone" 
                       placeholder="Enter Phone Number" required class="form-control">
            </div>

            <div class="mb-3 col-4">
                <label class="form-label" for="course">Course</label>
                <select class="form-select" name="course" id="course" required>
                    <option value="">-- Select Course --</option>
                    <option value="java">Java</option>
                    <option value="C++">C++</option>
                    <option value="python">Python</option>
                    <option value="C">C</option>
                    <option value=".Net">.Net</option>
                </select>
            </div>
        </div>
        <!-- row 3 -->
        <div class="row">
        <div class="mb-3 col-3">
            <label class="form-label" for="password">Password</label>
            <input type="password" name="password" id="password" 
                   placeholder="Enter Password" required class="form-control">
        </div>
            <!-- City -->
           <div class="mb-3 col-3">
            <label class="form-label" for="city">City</label>
            <input type="text" name="city" id="city" 
                   placeholder="city" required class="form-control">
           </div>
           <div class="mb-3 col-3">
                <label class="form-label" for="amount">Amount</label>
                <input type="number" name="amount" id="amount" 
                       placeholder="amount" required class="form-control">
            </div>
        </div>
        
        <!-- State -->
        <div class="row">
        <div class="mb-3 col-4">
            <label class="form-label" for="state">State</label>
            <select class="form-select" name="state" id="state" required>
                <option value="">-- Select State --</option>
                <option value="delhi">Delhi</option>
                <option value="mumbai">Mumbai</option>
                <option value="patna">Patna</option>
                <option value="lucknow">Lucknow</option>
                <option value="pune">Pune</option>
            </select>
        </div>
        <!-- Branch -->
            <div class="mb-3 col-4">
            <label class="form-label" for="branch">Branch</label>
            <input type="text" name="branch" id="branch" 
                   placeholder="branch" required class="form-control">
            </div>
           </div>
        <!-- Address -->
        <div class="row">
        <div class="mb-3 col-4">
            <label class="form-label" for="address">Address</label>
            <textarea rows="3" name="address" id="address" 
                      placeholder="Enter Address" class="form-control"></textarea>
        </div>
         <div class="mb-3 col-4">
                <label class="form-label" for="country">Country</label>
                <input type="text" name="country" id="country" 
                       placeholder="country" required class="form-control">
            </div>
         </div>
         
        <!-- Submit Button -->
        <div class="mb-3 text-center">
            <button type="submit" class="btn btn-lg btn-success">Add_Course</button>
        </div>

    </form>
</div>
</body>
</html>
