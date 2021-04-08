<%-- 
    Document   : PaymentDetails.jsp
    Author     : Koh Hui Hui
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <!-- END nav -->

<section class="hero-wrap hero-wrap-2" style="background-image: url('image/ATC.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">

        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Payment <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">Payment</h2>
          </div>
        </div>
      </div>
    </section>

        <section class="ftco-section">
<div class="container">
     <div class="row justify-content-center">
    <div class="col-xl-10 ftco-animate">
    <form class="form mt-4" action="SuccessOrder.jsp">
         <h3 class="mb-4 billing-heading">Payment Details</h3>
                         <div class="row align-items-end">

                         <div class="w-100"></div>
                  <div class="col-md-6">
        <div class="form-group">
            <label for="cardname" class="text-capitalize">Name on the card</label>
                <input type="text" class="form-control">
                </div>
                  </div>
         <div class="col-md-6">
        <div class="form-group">
            <label for="cardnumber" class="text-capitalize">card number</label>
                <input type="text" class="form-control" placeholder="1234 4567 5869 1234" pattern="^[0-9].{15,}"/>
                </div>
                  </div>
                         <div class="w-100"></div>
                <div class="col-md-6">
                <div class="form-group">
                    <label for="expiry" class="text-capitalize">exp.date</label>
                <input type="text" class="form-control" placeholder="04/2021">
                </div>
                </div>
                <div class="col-md-6">
                <div class="form-group">
                <label for="cvv">CVV</label>
                <input type="text" class="form-control" placeholder="" maxlength="3" placeholder="123">
                </div>
                </div>
                         <div class="w-100"></div>
                <div class="col-md-12">
                <div class="form-group mt-4">
                        <div class="form-inline py-sm-2"> <input type="checkbox" name="details" id="details"> <label for="details" class="px-sm-2 pl-2 pt-sm-0 pt-2">Save my details for future purchases</label> </div>
                        <div class="btn btn-primary py-1 px-4"> <input type="submit" value="place your order" class="text-capitalize btn btn-primary btn-block p-3"> </div>
                        <div id="form-footer">
                            <p>By placing your order, you agree to our <a href="#">privacy notice</a> & <a href="#">terms of use</a>.
                        </div>
                         </div>
                </div></div>
                    </form>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
        <script src="js/main.js"></script>

        <jsp:include page="footer.jsp" />

</body>
</html>
