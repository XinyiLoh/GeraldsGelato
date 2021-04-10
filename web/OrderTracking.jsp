<%-- 
    Document   : OrderTracking.jsp
    Author     : Koh Hui Hui
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.icecreamDA"%>
<%@page import="domain.IceCream"%>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <!-- END nav -->
        
        <style>
            .track .step {
     -webkit-box-flex: 1;
     -ms-flex-positive: 1;
     flex-grow: 1;
     width: 25%;
     margin-top: -18px;
     text-align: center;
     position: relative
 }

 .track .step.active:before {
     background: #FF5722
 }

 .track .step::before {
     height: 7px;
     position: absolute;
     content: "";
     width: 100%;
     left: 0;
     top: 18px
 }

 .track .step.active .icon {
     background: #ee5435;
     color: #fff
 }

 .track .icon {
     display: inline-block;
     width: 40px;
     height: 40px;
     line-height: 40px;
     position: relative;
     border-radius: 100%;
     background: #ddd
 }

 .track .step.active .text {
     font-weight: 400;
     color: #000
 }

 .track .text {
     display: block;
     margin-top: 7px
 }
 
  .track {
     position: relative;
     background-color: #ddd;
     height: 7px;
     display: -webkit-box;
     display: -ms-flexbox;
     display: flex;
     margin-bottom: 60px;
     margin-top: 50px
 }
 
 ul {
  list-style-type: none;
}
        </style>
        
        <section class="hero-wrap hero-wrap-2" style="background-image: url('image/ATC.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
              <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate mb-5 text-center">
                      <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Order Tracking <i class="fa fa-chevron-right"></i></span></p>
                  <h2 class="mb-0 bread">Order Tracking</h2>
                </div>
              </div>
            </div>
</section>
        
        <section class="ftco-section">
        <div class="container">
        <h3 class="mb-4 billing-heading">Order Tracking</h3>
        <div class="row">
                    <div class="col-md-4 col-md-offset-3"> Order Number: 
        <form action="searchServlet" method="post" class="search-form">
                            <div class="form-group has-feedback">
                                <label for="search" class="sr-only">Search</label>
                                <input type="text" class="form-control" name="search" id="search" placeholder="XXXXXXXXX">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </form>
                    </div>
        </div>
        <div class="track" style="margin-top: 15%">
                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text">Packaging</span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text">Shipping</span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-paper-plane"></i> </span> <span class="text">Delivered</span> </div>
            </div>
        <center>
            <div class="card" style="width: 30rem;margin: 10% 0">
                <div class="card-body row">
                    <div class="col"> <strong>Shipping to:</strong> <br> *address* <br><i class="fa fa-phone"></i> *phoneno* </div>
                    <div class="col"> <strong>Status:</strong> <br> **status </div>
                </div>
            </div>
        </center>
            <hr>
            <ul class="row">
                <li class="col-md-4">
                    <figure class="itemside mb-3">
                        <div class="aside"><img src="" class="img-sm border"></div>
                            <figcaption class="info align-self-center">
                            <p class="title"><span class="category">blabla</span>
                                <br> 8GB RAM</p> <span class="text-muted">$950 </span>  
                        </figcaption>
                    </figure>
                </li>
            </ul>
            <hr>
            <div class="btn-group" style="margin-top:5%">
                  <a href="icecream.jsp" class="btn btn-primary py-3 px-4"> <i class="fa fa-chevron-left"></i> Back to shopping</a>
              </div>
</div>
        </section>
        
        <table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
        
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
        <script src="js/main.js"></script>

        <jsp:include page="footer.jsp" />


</body>
</html>

