<%@ page import="conn.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>E-Learning &mdash; Website by developer</title>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/style.css">
<%@ include file="nav.jsp" %>


</head>

<div class="hero-slide owl-carousel site-blocks-cover">
  
  <div class="intro-section">
    <img src="images/ImageEdu4.png" class="img-fluid w-100" alt="Education Image 4">
    <div class="container position-absolute top-50 start-50 translate-middle text-center">
      <div class="row align-items-center">
        <div class="col-lg-12 mx-auto" data-aos="fade-up">
          <h1></h1>
        </div>
      </div>
    </div>
  </div>

  <div class="intro-section">
    <img src="images/ImageEdu3.png" class="img-fluid w-100" alt="Education Image 3">
    <div class="container position-absolute top-50 start-50 translate-middle text-center">
      <div class="row align-items-center">
        <div class="col-lg-12 mx-auto" data-aos="fade-up">
          <h1></h1>
        </div>
      </div>
    </div>
  </div>

  <div class="intro-section">
    <img src="images/ImageEdu2.png" class="img-fluid w-100" alt="Education Image 2">
    <div class="container position-absolute top-50 start-50 translate-middle text-center">
      <div class="row align-items-center">
        <div class="col-lg-12 mx-auto" data-aos="fade-up">
          <h1></h1>
        </div>
      </div>
    </div>
  </div>

</div>

   

    <div class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-4 mb-5">
            <h2 class="section-title-underline mb-5">
              <span>Popular Courses</span>
            </h2>
          </div>
        </div>
        <div class="row">
        <%
    try
    {
    	Connection dbs = Conn.getCon();
    	String q="select* from course limit 0,3";
    	PreparedStatement ps=dbs.prepareStatement(q);
    	ResultSet rs = ps.executeQuery();
    	while(rs.next())
    	{
    		%>
    		
          <div class="card" style="width: 20rem; height:300px;  overflow: auto; padding: 20px; margin-left:20px">
  
  <div class="card-body">
    <h2 class="card-title text-center" style="color:green"><%= rs.getString("course") %></h2>
    <p class="card-text text-justify"><%= rs.getString("description") %></p>
     <p class="card-text"><%= rs.getString("project") %></p>
   <a href="<%= rs.getString("course")
            .toLowerCase()
            .replace(" ", "-")
            .replace("/", "") %>.jsp" 
   class="btn btn-primary">
   Read More
</a>
   
   
    
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

    
   <div class="site-section">
  <div class="container">
    <div class="row mb-5 justify-content-center text-center">
      <div class="col-lg-4 mb-5">
        <h2 class="section-title-underline mb-5">
          <span>Latest Course</span>
        </h2>
      </div>
    </div>

    <!-- Carousel Wrapper -->
    <div id="courseCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="500">
    
      <div class="carousel-inner">
        <%
          try {
            Connection dbs = Conn.getCon();
            String q = "SELECT course, project, fees, duration, SUBSTRING(description,1,175) AS short_Value FROM course";
            PreparedStatement ps = dbs.prepareStatement(q);
            ResultSet rs = ps.executeQuery();

            int count = 0;
            boolean first = true;
        %>

        <div class="carousel-item active">
          <div class="row justify-content-center">
        <%
            while (rs.next()) {
              String course = rs.getString("course");
              String project = rs.getString("project");
              String fees = rs.getString("fees");
              String duration = rs.getString("duration");
              String shortDescription = rs.getString("short_Value");

              if (count > 0 && count % 3 == 0) {
        %>
          </div>
        </div>
        <div class="carousel-item">
          <div class="row justify-content-center">
        <%
              }
        %>
              <div class="col-md-4">
                <div class="card mb-4 shadow" style="width: 18rem; margin: auto;">
                  <div class="card-body text-center">
                    <h5 class="card-title" style="color:green"><%= course %></h5>
                    <p class="card-text text-justify"><%= shortDescription %>....</p>
                    <p class="card-text"><strong>Project:</strong> <%= project %></p>
                    <p class="card-text"><strong>Fees:</strong> <%= fees %></p>
                    <p class="card-text"><strong>Duration:</strong> <%= duration %></p>
                    <a href="<%= rs.getString("course")
            .toLowerCase()
            .replace(" ", "-")
            .replace("/", "") %>.jsp" 
   class="btn btn-primary">
   Read More
</a>
                  </div>
                </div>
              </div>
        <%
              count++;
            }
        %>
          </div>
        </div>

        <%
          } catch (Exception e) {
            e.printStackTrace();
          }
        %>
      </div>
    </div>
  </div>
</div>
    
    


    <div class="section-bg style-1" style="background-image: url('images/about_1.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h2 class="section-title-underline style-2">
              <span>About Our Institute</span>
            </h2>
          </div>
          <div class="col-lg-8">
            
            <p>Our institute aims to transform traditional education through a comprehensive E-Learning system that brings quality learning to everyone. We combine modern technology with expert teaching to create a flexible, interactive, and supportive learning environment. Our platform offers a wide range of courses, digital resources, and personalized guidance to help students learn effectively from home or on the go.
We believe in making education accessible, affordable, and future-focused. With continuous innovation and a commitment to excellence, our institute helps learners develop essential skills, achieve academic success, and prepare for real-world opportunities. Through our E-Learning initiative, we ensure that every student receives a meaningful and impactful learning experience.</p>
            <p><a href="about.jsp">Read more</a></p>
          </div>
        </div>
      </div>
    </div>

    <!-- // 05 - Block -->
  <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-4">
            <h2 class="section-title-underline">
              <span>Testimonials</span>
            </h2>
          </div>
        </div>


        <div class="owl-slide owl-carousel">

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_1.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Allison Holmes</h3>
                <span>Designer</span>
              </div>
            </div>
            <div>
              <p>&ldquo;Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque, mollitia. Possimus mollitia nobis libero quidem aut tempore dolore iure maiores, perferendis, provident numquam illum nisi amet necessitatibus. A, provident aperiam!&rdquo;</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Allison Holmes</h3>
                <span>Designer</span>
              </div>
            </div>
            <div>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque, mollitia. Possimus mollitia nobis libero quidem aut tempore dolore iure maiores, perferendis, provident numquam illum nisi amet necessitatibus. A, provident aperiam!</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_4.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Allison Holmes</h3>
                <span>Designer</span>
              </div>
            </div>
            <div>
              <p>&ldquo;Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque, mollitia. Possimus mollitia nobis libero quidem aut tempore dolore iure maiores, perferendis, provident numquam illum nisi amet necessitatibus. A, provident aperiam!&rdquo;</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Allison Holmes</h3>
                <span>Designer</span>
              </div>
            </div>
            <div>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque, mollitia. Possimus mollitia nobis libero quidem aut tempore dolore iure maiores, perferendis, provident numquam illum nisi amet necessitatibus. A, provident aperiam!</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Allison Holmes</h3>
                <span>Designer</span>
              </div>
            </div>
            <div>
              <p>&ldquo;Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque, mollitia. Possimus mollitia nobis libero quidem aut tempore dolore iure maiores, perferendis, provident numquam illum nisi amet necessitatibus. A, provident aperiam!&rdquo;</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_4.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Allison Holmes</h3>
                <span>Designer</span>
              </div>
            </div>
            <div>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque, mollitia. Possimus mollitia nobis libero quidem aut tempore dolore iure maiores, perferendis, provident numquam illum nisi amet necessitatibus. A, provident aperiam!</p>
            </div>
          </div>

        </div>
        
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
    
    <div class="news-updates">
      <div class="container">
         
        <div class="row">
          <div class="col-lg-9">
             <div class="section-heading">
              <h2 class="text-black">News &amp; Updates</h2>
              <a href="#"></a>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="post-entry-big">
                  <a href="#" class="img-link"><img src="images/blog_large_1.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta"> 
                      <a href="#">November 5, 2025</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.jsp">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="post-entry-big horizontal d-flex mb-4">
                  <a href="news-single.jsp" class="img-link mr-4"><img src="images/blog_1.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta">
                      <a href="#">November 5, 2025</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.jsp">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>

                <div class="post-entry-big horizontal d-flex mb-4">
                  <a href="news-single.jsp" class="img-link mr-4"><img src="images/blog_2.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta">
                      <a href="#">November 5, 2025</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.jsp">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>

                <div class="post-entry-big horizontal d-flex mb-4">
                  <a href="news-single.jsp" class="img-link mr-4"><img src="images/blog_1.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta">
                      <a href="#">November 5, 2025</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.jsp">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="section-heading">
              <h2 class="text-black">Campus</h2>
              <a href="#"></a>
            </div>
            <a href="images/video1.mp4" class="video-1 mb-4" data-fancybox="" data-ratio="2">
              <span class="play">
                <span class="icon-play"></span>
              </span>
              <img src="images/image4.png" alt="Image" class="img-fluid">
            </a>
            <a href="images/video2.mp4" class="video-1 mb-4" data-fancybox="" data-ratio="2">
                <span class="play">
                  <span class="icon-play"></span>
                </span>
                <img src="images/image5.png" alt="Image" class="img-fluid">
              </a>
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