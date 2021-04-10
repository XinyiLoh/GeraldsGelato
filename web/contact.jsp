<%-- 
    Document   : contact
    Author     : Siah Xin Ying
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Geralds Gelato</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

<jsp:include page="header.jsp" />
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('image/PIC.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Contact Us <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">Contact Us</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
        <div class="container">
                <div class="row justify-content-center">
                        <div class="col-md-12">
                                <div class="wrapper px-md-4">
                                        <div class="row mb-5">
                                                <div class="col-md-3">
                                                        <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                                <span class="fa fa-map-marker"></span>
                                        </div>
                                        <div class="text">
                                    <p><span>Address:</span> 45 2B Jln Datuk Tan Yew Lai Taman Tan Yew Lai Malaysia</p>
                                  </div>
                          </div>
                                                </div>
                                                <div class="col-md-3">
                                                        <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                                <span class="fa fa-phone"></span>
                                        </div>
                                        <div class="text">
                                    <p><span>Phone:</span> <a href="tel://1234567920">+00 0000 000</a></p>
                                  </div>
                          </div>
                                                </div>
                                                <div class="col-md-3">
                                                        <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                                <span class="fa fa-paper-plane"></span>
                                        </div>
                                        <div class="text">
                                    <p><span>Email:</span> <a href="mailto:info@yoursite.com">geraldsgelato@email.com</a></p>
                                  </div>
                          </div>
                                                </div>
                                                <div class="col-md-3">
                                                        <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                                <span class="fa fa-globe"></span>
                                        </div>
                                        <div class="text">
                                    <p><span>Website</span> <a href="#">geraldsgelato.com</a></p>
                                  </div>
                          </div>
                                                </div>
                                        </div>
                                        <div class="row no-gutters">
                                                <div class="col-md-7">
                                                        <div class="contact-wrap w-100 p-md-5 p-4">
                                                                <h3 class="mb-4">Contact Us</h3>
                                                                <form method="POST" id="contactForm" name="contactForm" class="contactForm">
                                                                        <div class="row">
                                                                                <div class="col-md-6">
                                                                                        <div class="form-group">
                                                                                                <label class="label" for="name">Full Name</label>
                                                                                                <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                                                                                        </div>
                                                                                </div>
                                                                                <div class="col-md-6"> 
                                                                                        <div class="form-group">
                                                                                                <label class="label" for="email">Email Address</label>
                                                                                                <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                                                                                        </div>
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                        <div class="form-group">
                                                                                                <label class="label" for="subject">Subject</label>
                                                                                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">
                                                                                        </div>
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                        <div class="form-group">
                                                                                                <label class="label" for="#">Message</label>
                                                                                                <textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Message"></textarea>
                                                                                        </div>
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                        <div class="form-group">
                                                                                                <input type="submit" value="Send Message" class="btn btn-primary">
                                                                                                <div class="submitting"></div>
                                                                                        </div>
                                                                                </div>
                                                                        </div>
                                                                </form>
                                                        </div>
                                                </div>
                                                <div class="col-md-5 order-md-first d-flex align-items-stretch">
                                                        <div id="map" class="map"></div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
    </section>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
   <jsp:include page="footer.jsp" />
   
  </body>
</html>
