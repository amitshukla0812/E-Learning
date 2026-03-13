<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">

<%@ include file="nav.jsp" %>

</head>

<body >

    
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="index.html">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Contact</span>
      </div>
    </div>
<div class="site-section">
  <div class="container">
    <form action="ContactInsert.jsp" method="post">
      <div class="row">
        <div class="col-md-6 form-group">
          <label for="firstname">First Name</label>
          <input type="text" id="firstname" name="firstname" class="form-control form-control-lg" placeholder="Enter First Name" required>
        </div>
        <div class="col-md-6 form-group">
          <label for="lastname">Last Name</label>
          <input type="text" id="lastname" name="lastname" class="form-control form-control-lg" placeholder="Enter Last Name" required>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6 form-group">
          <label for="email">Email Address</label>
          <input type="email" id="email" name="email" class="form-control form-control-lg" placeholder="Enter Email Address"required>
        </div>
        <div class="col-md-6 form-group">
          <label for="phone">Tel. Number</label>
          <input type="text" id="phone" name="phone" class="form-control form-control-lg" placeholder="Enter Phone Number" required>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12 form-group">
          <label for="message">Message</label>
          <textarea name="message" id="message" cols="5" rows="5" class="form-control" placeholder="Write Message..."required></textarea>
        </div>
      </div>

      <div class="row">
        <div class="col-12">
          <input type="submit" value="Send Message" class="btn btn-primary btn-lg px-5">
        </div>
      </div>
    </form>
  </div>
</div>


     <div class="section-bg style-1" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span class="icon flaticon-mortarboard"></span>
            <h3>Our Philosphy</h3>
            <p>An e-learning philosophy centers on delivering flexible, accessible, and engaging education through digital platforms. Key tenets include creating a personalized experience with mobile-friendly content, using technology to simulate real-world scenarios, and integrating pedagogical strategies with ethical considerations. Ultimately, it aims to enhance the learning process to be more inclusive, efficient, and relevant for a diverse, modern audience. </p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span class="icon flaticon-school-material"></span>
            <h3>Academics Principle</h3>
            <p>E-learning focus on effective course design and learner engagement, emphasizing clear objectives, aligned curriculum, and interactive elements like multimedia, narration, and storytelling. Key principles include breaking content into smaller chunks (microlearning), using signaling to guide the learner, incorporating assessments frequently, and providing opportunities for both guided and independent practice. The pedagogy should also be inclusive, consistent, and transparently easy to use. </p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span class="icon flaticon-library"></span>
            <h3>Key of Success</h3>
            <p>The key to e-learning success lies in a combination of learner self-discipline and course design principles. For learners, success depends on self-discipline, time management, and active participation. For educators and course creators, key factors include high-quality, relevant content; clear objectives; and interactive elements like feedback and gamification to keep learners engaged. </p>
          </div>
        </div>
      </div>
    </div>
    
<div class="footer">
  <div class="container">
    <div class="row">
      <!-- ===== About Section ===== -->
      <div class="col-lg-3">
        <p class="mb-4">
          <img src="images/E-learning.png" alt="E-Learning Logo" class="img-fluid" width="150" height="50">
        </p>
        <p>
          E-learning is the use of electronic technologies to deliver educational content, enabling students to learn anytime and anywhere through the internet.
        </p>
        <p><a href="#"></a></p>
      </div>

      <!-- ===== Campus Links ===== -->
      <div class="col-lg-3">
        <h3 class="footer-heading"><span>Quick Links</span></h3>
        <ul class="list-unstyled">
          <li><a href="index.jsp">E-Learning</a></li>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="about.jsp">About-Us</a></li>
          <li><a href="Onlineregistration.jsp">Online-Registration</a></li>
          
          <li><a href="contact.jsp">Contact</a></li>
        </ul>
      </div>

      <!-- ===== Courses Links ===== -->
      <div class="col-lg-3">
        <h3 class="footer-heading"><span>Our Courses</span></h3>
        <ul class="list-unstyled">
          <li><a href="core-java.jsp">Core Java</a></li>
          <li><a href="advanced-java.jsp">Advanced Java</a></li>
          <li><a href="java-fullstack.jsp">Java FullStack</a></li>
          <li><a href="mern-fullstack.jsp">MERN FullStack</a></li>
          <li><a href="python-fullstack.jsp">Python FullStack</a></li>
          <li><a href="mean-fullstack.jsp">MEAN FullStack</a></li>
          <li><a href="aiml.jsp">AI / ML</a></li>
          <li><a href="data-science.jsp">Data Science</a></li>
          <li><a href="data-analytics.jsp">Data Analytics</a></li>
        </ul>
      </div>

      <!-- ===== Contact Links ===== -->
      <div class="col-lg-3">
        <h3 class="footer-heading"><span>Contact</span></h3>
        <ul class="list-unstyled">
          <li><a href="#">Phone number : +91 7070905090</a></li>
          <li><a href="#">WhatsApp  : +91 7070905090 </a></li>
          <li><a href="#">Email : Info@gmail.com</a></li>
          <li><a href="#"></a></li>
          <li><a href="#">Address : India</a></li>
        </ul>
      </div>
    </div>

    <!-- ===== Copyright ===== -->
    <div class="row mt-4">
      <div class="col-12 text-center">
        <div class="copyright">
          <p>
            E-Learning &copy; <script>document.write(new Date().getFullYear());</script> 
            All rights reserved.
          </p>
        </div>
      </div>
    </div>
  </div>
</div>


  <!-- .site-wrap -->

  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>