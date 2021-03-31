<%-- 
    Document   : icecream
    Author     : Siah Xin Ying
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.icecreamDA"%>
<%@page import="classes.IceCream"%>
<!-- Functions -->
<%  //Declarations
    ArrayList<IceCream> iceCreamList = new ArrayList<IceCream>();
    icecreamDA da = new icecreamDA();
    String type = request.getParameter("type");

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

        <!-- END nav -->

        <section class="hero-wrap hero-wrap-2" style="background-image: url('image/PIC2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end justify-content-center">
                    <div class="col-md-9 ftco-animate mb-5 text-center">
                        <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span></p>
                        <h2 class="mb-0 bread">ICE CREAM</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="row mb-4">
                            <div class="col-md-12 d-flex justify-content-between align-items-center">

                            </div>
                        </div>
                        <div class="row">
                            <%if (type != null) {%>
                            <!-- Display Types -->
                            <%for (int x = 0; x < iceCreamList.size(); x++) {%>
                            <%if (type.equals(iceCreamList.get(x).getIceCreamType())) {%>
                            <div class="col-md-4 d-flex">
                                <div class="product ftco-animate">
                                    <div class="img d-flex align-items-center justify-content-center" style="background-image: url(<%= iceCreamList.get(x).getIceCreamImage()%>);">
                                        <div class="desc">
                                            <p class="meta-prod d-flex">                                                
                                                <a href="<%="icecreamDetails.jsp?ID=" + iceCreamList.get(x).getIcecreamID()%>" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="text text-center">
                                        <span class="category"><%= iceCreamList.get(x).getIceCreamType()%></span>
                                        <h2><%= iceCreamList.get(x).getIceCreamName()%></h2>
                                        <span class="price">RM<%= iceCreamList.get(x).getIceCreamPrice()%>0</span>
                                    </div>
                                </div>
                            </div>
                            <%}
                                }%> 

                            <%} else {%>
                            <!-- Display All -->
                            <%for (int x = 0; x < iceCreamList.size(); x++) {%>
                            <div class="col-md-4 d-flex">
                                <div class="product ftco-animate">
                                    <div class="img d-flex align-items-center justify-content-center" style="background-image: url(<%= iceCreamList.get(x).getIceCreamImage()%>);">
                                        <div class="desc">
                                            <p class="meta-prod d-flex">                                                
                                                <a href="<%="icecreamDetails.jsp?ID=" + iceCreamList.get(x).getIcecreamID()%>" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="text text-center">
                                        <span class="category"><%= iceCreamList.get(x).getIceCreamType()%></span>
                                        <h2><%= iceCreamList.get(x).getIceCreamName()%></h2>
                                        <span class="price">RM<%= iceCreamList.get(x).getIceCreamPrice()%>0</span>
                                    </div>
                                </div>
                            </div>
                            <%}%>
                            <%}%>

                        </div>

                    </div>

                    <div class="col-md-3">
                        <div class="sidebar-box ftco-animate">
                            <div class="categories">
                                <h3>Product Types</h3>
                                <ul class="p-0">
                                    <li><a href="icecream.jsp">All <span class="fa fa-chevron-right"></span></a></li>
                                    <li><a href="icecream.jsp?type=Classic">Classic <span class="fa fa-chevron-right"></span></a></li>
                                    <li><a href="icecream.jsp?type=Sorbets">Sorbets <span class="fa fa-chevron-right"></span></a></li>
                                    <li><a href="icecream.jsp?type=Frozen Yogurt">Frozen Yogurt <span class="fa fa-chevron-right"></span></a></li>
                                </ul>
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

    </body>
</html>