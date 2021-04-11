<%-- 
    Document   : Checkout.jsp
    Author     : Koh Hui Hui
--%>

<%@page import="domain.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controller.Checkout"%>
<%@page import="dataAccess.cartDA"%>
<%@page import="java.text.DecimalFormat" %>
<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import="java.util.List" %>

<%
    ArrayList<Cart> cartList = new ArrayList<Cart>();
    cartDA da = new cartDA();

    cartList = da.selectAllCart();
    double payAmt = 0;
    DecimalFormat priceFormatter = new DecimalFormat("RM0.00");
%>

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
        
<%
//allow access only if session exists
//if(session.getAttribute("user") == null){
//	response.sendRedirect("UserLogin.jsp");
//}
//String userName = null;
//String sessionID = null;
//Cookie[] cookies = request.getCookies();
//if(cookies !=null){
//for(Cookie cookie : cookies){
//	if(cookie.getName().equals("user")) userName = cookie.getValue();
//}
//}
%>

<section class="hero-wrap hero-wrap-2" style="background-image: url('image/ATC.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-end justify-content-center">
      <div class="col-md-9 ftco-animate mb-5 text-center">
            <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Checkout <i class="fa fa-chevron-right"></i></span></p>
        <h2 class="mb-0 bread">Checkout</h2>
      </div>
    </div>
  </div>
</section>

<style>
.ch_pp {
    text-decoration: underline;
}
.ch_pp.sip {
    margin-left: 10px;
}
.check-bc,
.check-bc:hover {
    color: #222;
}
.SuccessField {
    border-color: #458845 !important;
    -webkit-box-shadow: 0 0 7px #9acc9a !important;
    -moz-box-shadow: 0 0 7px #9acc9a !important;
    box-shadow: 0 0 7px #9acc9a !important;
    background: #f9f9f9 url(../images/valid.png) no-repeat 98% center !important
}
.btn-xs{
    line-height: 28px;
}
/* images*/
ol, ul {
  list-style: none;
}
.hand {
  cursor: pointer;
  cursor: pointer;
}
.cards{
    padding-left:0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards .mastercard {
  background-position: -51px 0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards .amex {
  background-position: -102px 0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards li:last-child {
  margin-right: 0;
}
.nav-item{
    display: inline-block
}
    </style>

<section class="ftco-section">
    <!-- credit card info-->
               <div class="row justify-content-center">
                            <div class="col-xl-10 ftco-animate">
                                 <h3 class="mb-4 billing-heading">Payment Details</h3>
                                                 <div class="row align-items-end">
                                                 <div class="w-100"></div>
                                          <div class="form-group">
                                <div class="col-md-auto" required><strong>Card Type:</strong></div>
                                <div class="col-md-12">
                                    <select id="CreditCardType" name="payMethod" class="form-control" required>
                                        <option value="visa">Visa</option>
                                        <option value="mastercard">MasterCard</option>
                                    </select>
                                </div>
                            </div>
                                                 <div class="w-100"></div>
                                 <div class="col-md-5">
                                <div class="form-group">
                                    <label for="cardnumber" class="text-capitalize" required>card number</label>
                                    <input type="text" class="form-control" maxlength="19" name="cardNo" placeholder="XXXX XXXX XXXX XXXX" required/>
                                    <!--pattern="^[0-9].{15,}"--> 
                                        </div>
                                          </div>
                                        <div class="col-md-5">
                                <div class="form-group">
                                    <label for="cardnumber" class="text-capitalize" required>Expiration Date</label>
                                    <input type="text" class="form-control" name="expDate" placeholder="XX/XXXX" maxlength="7" required/>
                                    <!--pattern="^(0[1-9]|1[0-2])\/?([0-9]{4})$"--> 
                                        </div>
                                          </div>
                                        <div class="col-md-2">
                                        <div class="form-group">
                                        <label for="cvv">CVV</label>
                                        <input type="text" class="form-control" name="cvv" maxlength="3" placeholder="XXX" required>
                                        <!--pattern="^[0-9]{3, 4}$"-->
                                        </div>
                                        </div>
            <div class="w-100"></div>
            <div class="form-group">
                <div class="col-md-12">
                    <span>Pay secure using your credit card.</span>
                </div>
                <div class="col-md-12">
                    <ul class="cards">
                        <li class="visa hand">Visa</li>
                        <li class="mastercard hand">MasterCard</li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
            </div>
            </div></div></div>
    
    <center><hr style="width:90%;margin: 5% 0"></center>
                    
     
    <form action="Payment" class="billing-form" method="post">
    <div class="container">
            <div class="row justify-content-center">
      <div class="col-xl-10 ftco-animate">
            
                <h3 class="mb-4 billing-heading">Customer Details</h3>
                      <div class="row align-items-end">
                      <div class="col-md-6">
                      <div class="form-group">
                      <label for="firstname">First Name</label>
                      <input type="text" class="form-control" name="fName" placeholder="Enter your first name" required>
                      </div>
                      </div>
                      <div class="col-md-6">
                      <div class="form-group">
                      <label for="lastname">Last Name</label>
                      <input type="text" class="form-control" name="lName" placeholder="Enter your last name" required>
                      </div>
                      </div>
                      <div class="w-100"></div>
                        <div class="col-md-12">
                          <div class="form-group">
                          <label for="state">State </label>
                            <div class="select-wrap">
                              <div class="icon"><i class="fa fa-caret-down" aria-hidden="true"></i></div>
                              <select name="state" id="" class="form-control" required>
                                  <option value="">Choose your state</option>
                                  <option value="SB">Sabah</option>
                                  <option value="SW">Sarawak</option>
                                  <option value="SG">Selangor</option>
                                  <option value="PH">Pahang</option>
                                  <option value="JH">Johor</option>
                                  <option value="PR">Perak</option>
                                  <option value="KT">Kelantan</option>
                                  <option value="NS">Negeri Sembilan</option>
                                  <option value="TG">Terengganu</option>
                                  <option value="KD">Kedah</option>
                                  <option value="PL">Perlis</option>
                                  <option value="PN">Penang</option>
                                  <option value="MC">Malacca</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-6">
                        <div class="form-group">
                        <label for="streetaddress">Street Address</label>
                        <input type="text" class="form-control" name="streetAddress" placeholder="House number and street name" required>
                        </div>
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" name="unitAddress" placeholder="Appartment, suite, unit etc: (optional)">
                        </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-6">
                        <div class="form-group">
                        <label for="postcodezip">Postcode</label>
                        <input type="text" class="form-control" name="postcode" placeholder="Enter your postcode" maxlength="5" required>
                        </div>
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                        <label for="towncity">City</label>
                        <input type="text" class="form-control" name="city" placeholder="Enter your city" required>
                        </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-6">
                        <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="phone" class="form-control" name="phone" placeholder="Enter your phone number" required>
                        </div>
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                        <label for="emailaddress">Email Address</label>
                        <input type="email" class="form-control" name="email" placeholder="Enter your email address" required>
                        </div></div>
                        <div class="w-100"></div>
                        </div>
                
                <%
                    for(int i=0;i<cartList.size();i++){
                        payAmt += cartList.get(i).getQuantity()* cartList.get(i).getPrice();
                    }
                %>

              <div class="row mt-5 pt-3 d-flex">
                    <div class="col-md-6 d-flex">
                        <div class="cart-detail p-md-5">
                            <h3 class="billing-heading mb-4">Cart Total</h3>
                            <p class="d-flex total-price">
                                <span>Total &emsp;&emsp;&emsp;<%= priceFormatter.format(payAmt) %></span>
                                <span><input type="hidden" name="totalPay" value="<%= payAmt %>"/></span>
                            </p>
                        </div></div></div>
                            <div class="form-group mt-4">
                            <div id="form-footer">
                                <p>By placing your order, you agree to our <a href="#">privacy notice</a> & <a href="#">terms of use</a>.
                                                        </div>
                            <div class="btn btn-primary py-1 px-4">
                                <input type="submit" value="place your order" class="text-capitalize btn btn-primary btn-block p-3">
                            </div></div>
      </div> </div></div>
    </form></section>

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