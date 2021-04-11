<%-- 
    Document   : cart
    Author     : Siah Xin Ying
--%>

<%@page import="domain.Cart"%>
<%@page import="dataAccess.cartDA"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Cart> cartList = new ArrayList<Cart>();
    cartDA da = new cartDA();

    cartList = da.selectAllCart();
    double totalPrice = 0;
    String redirectPg;
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

        <section class="hero-wrap hero-wrap-2" style="background-image: url('image/ATC.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end justify-content-center">
                    <div class="col-md-9 ftco-animate mb-5 text-center">
                        <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Cart <i class="fa fa-chevron-right"></i></span></p>
                        <h2 class="mb-0 bread">My Cart</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="table-wrap">
                        <table class="table">
                            <thead class="thead-primary">
                                <tr>
                                    <th>&nbsp;</th>
                                    <th>Image</th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Subtotal</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (int x = 0; x < cartList.size(); x++) {%>
                                <tr class="alert" role="alert">
                                    
                                    <td>
                                        
                                    </td>
                                    <td>
                                        <div class="img" style="background-image: url(<%= cartList.get(x).getImage()%>);"></div>
                                    </td>
                                    <td>
                                        <div class="email">
                                            <span><%=cartList.get(x).getName()%></span>
                                        </div>
                                    </td>
                                    <td>RM<%=cartList.get(x).getPrice()%>0</td>
                                    <td class="quantity">
                                        <div class="input-group">
                                            <span>&emsp;&emsp;<%=cartList.get(x).getQuantity()%></span>
                                        </div>
                                    </td>
                                    <td>RM<%=cartList.get(x).getQuantity()* cartList.get(x).getPrice()%>0</td>
                                    <td>
                                        <a href="<%="removeCart?ID=" + cartList.get(x).getId()%>">Remove</a>
                                    </td>
                                    <%totalPrice += cartList.get(x).getQuantity()* cartList.get(x).getPrice(); %>
                                    <%}%> 
                                </tr>
                            
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row justify-content-end">
                    <div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
                        <div class="cart-total mb-3">
                            <h3>Cart Totals</h3>
                            <hr>
                            <p class="d-flex total-price">
                                <span>Total &emsp;&emsp;&emsp;RM <%= totalPrice%>0</span>
                                <span></span>
                            </p>
                        </div>
                                <% if(cartList.isEmpty()){
                                    redirectPg="";
                                    out.print("<script>alert('The cart is empty! ');</script>");
                                }else{
                                    redirectPg="Payment.jsp";
                                }%>
            <p class="text-center"><a href="<%= redirectPg %>" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
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
