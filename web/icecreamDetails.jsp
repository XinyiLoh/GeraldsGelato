<%-- 
    Document   : icecreamDetails
    Author     : Siah Xin Ying
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.icecreamDA"%>
<%@page import="classes.IceCream"%>

<!-- Functions -->
<%  //Declarations
    ArrayList<IceCream> iceCreamList = new ArrayList<IceCream>();
    icecreamDA da = new icecreamDA();
    String icecreamID = request.getParameter("ID");
    IceCream iceCream = da.getIceCream(icecreamID);

    //Database Access
    iceCreamList = da.selectAllIceCream();
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

        <div class="wrap">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d-flex align-items-center">
                        <p class="mb-0 phone pl-md-2">
                            <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +00 1234 567</a> 
                            <a href="#"><span class="fa fa-paper-plane mr-1"></span> youremail@email.com</a>
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
                            <p class="mb-0"><a href="#" class="mr-2">Sign Up</a> <a href="#">Log In</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">Liquor <span>store</span></a>
                <div class="order-lg-last btn-group">
                    <a href="#" class="btn-cart dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="flaticon-shopping-bag"></span>
                        <div class="d-flex justify-content-center align-items-center"><small>3</small></div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-item d-flex align-items-start" href="#">
                            <div class="img" style="background-image: url(images/prod-1.jpg);"></div>
                            <div class="text pl-3">
                                <h4>Bacardi 151</h4>
                                <p class="mb-0"><a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity: 01</span></p>
                            </div>
                        </div>
                        <div class="dropdown-item d-flex align-items-start" href="#">
                            <div class="img" style="background-image: url(images/prod-2.jpg);"></div>
                            <div class="text pl-3">
                                <h4>Jim Beam Kentucky Straight</h4>
                                <p class="mb-0"><a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity: 02</span></p>
                            </div>
                        </div>
                        <div class="dropdown-item d-flex align-items-start" href="#">
                            <div class="img" style="background-image: url(images/prod-3.jpg);"></div>
                            <div class="text pl-3">
                                <h4>Citadelle</h4>
                                <p class="mb-0"><a href="#" class="price">$22.50</a><span class="quantity ml-3">Quantity: 01</span></p>
                            </div>
                        </div>
                        <a class="dropdown-item text-center btn-link d-block w-100" href="cart.html">
                            View All
                            <span class="ion-ios-arrow-round-forward"></span>
                        </a>
                    </div>
                </div>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="product.html">Products</a>
                                <a class="dropdown-item" href="product-single.html">Single Product</a>
                                <a class="dropdown-item" href="cart.html">Cart</a>
                                <a class="dropdown-item" href="checkout.html">Checkout</a>
                            </div>
                        </li>
                        <li class="nav-item	"><a href="blog.html" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <section class="hero-wrap hero-wrap-2" style="background-image: url('image/PIC2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end justify-content-center">
                    <div class="col-md-9 ftco-animate mb-5 text-center">
                        <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span><a href="icecream.jsp">Ice Cream <i class="fa fa-chevron-right"></i></a></span></p>
                        <h2 class="mb-0 bread">DESCRIPTION</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">                
                <div class="row">
                    <div class="col-lg-6 mb-5 ftco-animate">
                        <img src="<%= iceCream.getIceCreamImage()%>" class="img-fluid" alt="Colorlib Template"></a>
                    </div>
                    <div class="col-lg-6 product-details pl-md-5 ftco-animate">
                        <h3><%= iceCream.getIceCreamName()%></h3>
                        <div class="rating d-flex">

                            <p class="text-left mr-4">
                                <a href="#" class="mr-2" style="color: #b7472a;"><%= iceCream.getIceCreamType()%> <span style="color: #bbb;"></span></a>
                            </p>
                            <p class="text-left">
                                <a href="#" class="mr-2" style="color: #000;"><%= iceCream.getIceCreamRating()%>.0<span style="color: #bbb;"> Rating</span></a>
                            </p>
                        </div>
                        <p class="price"><span>RM<%= iceCream.getIceCreamPrice()%>0</span></p>
                        <p><%= iceCream.getIceCreamDescription()%></p>

                        <div class="row mt-4">
                            <div class="input-group col-md-6 d-flex mb-3">
                                <span class="input-group-btn mr-2">
                                    <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </span>
                                <input type="text" id="quantity" name="quantity" class="quantity form-control input-number" value="1" min="1" max="<%= iceCream.getIceCreamAvailable()%>">
                                <span class="input-group-btn ml-2">
                                    <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </span>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-md-12">
                                <p style="color: #000;">Available: <%= iceCream.getIceCreamAvailable()%> </p>
                            </div>
                        </div>
                        <p><a href="cart.html" class="btn btn-primary py-3 px-5 mr-2">Add to Cart</a></p>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-md-12 nav-link-wrap">
                        <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link ftco-animate active mr-lg-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Description</a>

                            <a class="nav-link ftco-animate mr-lg-1" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Ingredients</a>


                        </div>
                    </div>
                    <div class="col-md-12 tab-wrap">

                        <div class="tab-content bg-light" id="v-pills-tabContent">

                            <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
                                <div class="p-4">
                                    <h3 class="mb-4"><%= iceCream.getIceCreamName()%></h3>
                                    <p><%= iceCream.getIceCreamLongDesc()%></p>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-day-2-tab">
                                <div class="p-4">
                                    <h3 class="mb-4"><%= iceCream.getIceCreamName()%></h3>
                                    <p><%= iceCream.getIceCreamIngredients()%></p>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
        <script src="js/main.js"></script>

        <script>
            $(document).ready(function () {

                var quantitiy = 0;
                $('.quantity-right-plus').click(function (e) {

                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    var quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    $('#quantity').val(quantity + 1);


                    // Increment

                });

                $('.quantity-left-minus').click(function (e) {
                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    var quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    // Increment
                    if (quantity > 0) {
                        $('#quantity').val(quantity - 1);
                    }
                });

            });
        </script>

    </body>
</html>