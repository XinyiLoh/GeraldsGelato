<%@page import="dataAccess.cartDA"%>
<%@page import="domain.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.User" %>
<jsp:useBean id="user" class="domain.User" scope="session"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ArrayList<Cart> cartList = new ArrayList<Cart>();
    cartDA da = new cartDA();

    cartList = da.selectAllCart();

%>

<body>
    <div class="wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <p class="mb-0 phone pl-md-2">
                        <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +00 0000 000</a> 
                        <a href="#"><span class="fa fa-paper-plane mr-1"></span> geraldsgelato@email.com</a>
                        <a href="admin/adminHome.jsp">Admin Panel</a>
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
                        <% 
                            if(session.getAttribute("user") == null){
                        %>
                                <p class="mb-0"><a href="UserSignUp.jsp" class="mr-2">Sign Up</a> <a href="UserLogin.jsp">Log In</a></p>
                        <%
                            }else{ 
                                user =(User) session.getAttribute("user");
                        %>
                                <form action="UserLogout" method="POST">
                                    <button type="submit">Logout</button>
                                </form>
                        <%
                            };
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">Geralds <span>Gelato</span></a>
            <div class="order-lg-last btn-group">
                <a href="#" class="btn-cart dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="flaticon-shopping-bag"></span>
                    <div class="d-flex justify-content-center align-items-center"><small><%=cartList.size()%></small></div>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <%for (int x = 0; x < cartList.size(); x++) {%>
                    <div class="dropdown-item d-flex align-items-start" href="<%="icecreamDetails.jsp?ID=" + cartList.get(x).getId()%>">
                        <div class="img" style="background-image: url(<%= cartList.get(x).getImage()%>);"></div>
                        <div class="text pl-3">
                            <h4><%=cartList.get(x).getName()%></h4>
                            <p class="mb-0"><a href="#" class="price">RM<%=cartList.get(x).getPrice()%>0</a><span class="quantity ml-3">Quantity: <%=cartList.get(x).getQuantity()%></span></p>
                        </div>
                    </div>
                    <%}%>                    
                    <a class="dropdown-item text-center btn-link d-block w-100" href="cart.jsp">
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
                    <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="aboutUs.jsp" class="nav-link">About</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ice Cream</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="icecream.jsp">Flavor</a>
                            <a class="dropdown-item" href="cart.jsp">Cart</a>
                            <a class="dropdown-item" href="#">Checkout</a>
                        </div>
                    </li>

                    <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->

</body>
</html>