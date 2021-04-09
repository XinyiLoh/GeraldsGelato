<%-- 
    Author     : Loh Xin Yi
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Admin Panel</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="../css/animate.css">

        <link rel="stylesheet" href="../css/owl.carousel.min.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">
        <link rel="stylesheet" href="../css/magnific-popup.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">

        <link rel="stylesheet" href="../css/flaticon.css">
        <link rel="stylesheet" href="../css/style.css">

        <style>
        .center {
              display: block;
              margin-left: auto;
              margin-right: auto;
              width: 50%;
            }
        </style>
    </head>
    <body>
        <div class="wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <p class="mb-0 phone pl-md-2">
                        <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +00 0000 000</a> 
                        <a href="#"><span class="fa fa-paper-plane mr-1"></span> geraldsgelato@email.com</a>
                        <a href="../index.jsp"><span class="fa fa-long-arrow-right mr-1"></span> Gerald's Gelato Homepage</a>
                    </p>
                </div>
                <div class="col-md-6 d-flex justify-content-md-end">
                    <div class="social-media mr-4">
                        <p class="mb-0 d-flex">
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                        </p>
                    </div>
                    <div class="reg">
                        <p class="mb-0"><a href="#" class="mr-2">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
         <section class="ftco-section">
          <div class="container">
            <div class="row justify-content-center mb-5">
              <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Management</span>
                <h2>Admin Panel</h2>
              </div>
            </div>
              <hr>
            <div class="row d-flex">
              <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="blog-single.html" class="block-20 img" style="background-image: url('../image/adminStaff.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="#">Maintain Staffs</a></h3>
                    <p>CRUD staffs</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="blog-single.html" class="block-20 img" style="background-image: url('../image/adminProd.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="#">Maintain Products</a></h3>
                    <p>CRUD products</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="blog-single.html" class="block-20 img" style="background-image: url('../image/adminSales.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="#">Sales Records</a></h3>
                    <p>Order records</p>
                  </div>
                </div>
              </div>
                <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="blog-single.html" class="block-20 img" style="background-image: url('../image/adminReport.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="#">Sales Report</a></h3>
                    <p>Generate sales report</p>
                  </div>
                </div>
              </div>
                <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="blog-single.html" class="block-20 img" style="background-image: url('../image/adminCust.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="#">Customer Records</a></h3>
                    <p>Check customer records</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>	
        
        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

        <script src="../js/jquery.min.js"></script>
        <script src="../js/jquery-migrate-3.0.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/jquery.easing.1.3.js"></script>
        <script src="../js/jquery.waypoints.min.js"></script>
        <script src="../js/jquery.stellar.min.js"></script>
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/jquery.magnific-popup.min.js"></script>
        <script src="../js/jquery.animateNumber.min.js"></script>
        <script src="../js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="../js/google-map.js"></script>
        <script src="../js/main.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>

    
    </body>

</html>
