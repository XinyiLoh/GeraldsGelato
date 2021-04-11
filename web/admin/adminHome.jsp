<%-- 
    Author     : Loh Xin Yi
--%>
<%@page import="domain.User" %>
<jsp:useBean id="user" class="domain.User" scope="session"></jsp:useBean>

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

        <%
        //allow access only if session exists
        if(session.getAttribute("user") == null){
           response.sendRedirect("../UserLogin.jsp");
        }else user =(User) session.getAttribute("user");
         
        if(!user.getRole().equals("admin")){
            response.sendRedirect("../Error403.html");
        }
        %>

        <div class="wrap">
            <h5>Hi <%=user.getUsername() %>, Welcome back.</h5>
            <div class="reg">
                        <p class="mb-0"><a href="../index.jsp"><span class="fa fa-long-arrow-right mr-1"></span> Gerald's Gelato Homepage</a></p>
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
                            <a href="UserDisplay.jsp" class="block-20 img" style="background-image: url('../image/adminStaff.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="UserDisplay.jsp">Maintain Staffs</a></h3>
                    <p>CRUD staffs</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="ProductDisplay.jsp" class="block-20 img" style="background-image: url('../image/adminProd.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="ProductDisplay.jsp">Maintain Products</a></h3>
                    <p>CRUD products</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="SalesRec.jsp" class="block-20 img" style="background-image: url('../image/adminSales.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="SalesRec.jsp">Sales Records</a></h3>
                    <p>Order records</p>
                  </div>
                </div>
              </div>
                <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="GenerateReport.jsp" class="block-20 img" style="background-image: url('../image/adminReport.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="GenerateReport.jsp">Sales Report</a></h3>
                    <p>Generate sales report</p>
                  </div>
                </div>
              </div>
                <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                            <a href="CustomerRecord.jsp" class="block-20 img" style="background-image: url('../image/adminCust.jpg');">
                  </a>
                  <div class="text p-4 bg-light">
                    <h3 class="heading mb-3"><a href="CustomerRecord.jsp">Customer Records</a></h3>
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
