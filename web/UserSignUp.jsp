<%-- 
    Author     : Loh Xin Yi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        
        <link rel="stylesheet" href="css/bootstrap/bootstrap-reboot.css">
        <link rel="stylesheet" href="css/bootstrap/bootstrap-grid.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    
        <style> 
                body {
                  background: maroon;
                }

                .card-signin {
                  border: 0;
                  border-radius: 1rem;
                  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
                  overflow: hidden;
                }

                .card-signin .card-title {
                  margin-bottom: 2rem;
                  font-weight: 300;
                  font-size: 1.5rem;
                }

                .card-signin .card-img-left {
                  width: 45%;
                  /* Link to your background image using in the property below! */
                  background: scroll center url('image/signup.jpg');
                  background-size: cover;
                }

                .card-signin .card-body {
                  padding: 2rem;
                }

                .form-signin {
                  width: 100%;
                }

                .form-signin .btn {
                  font-size: 80%;
                  border-radius: 5rem;
                  letter-spacing: .1rem;
                  font-weight: bold;
                  padding: 1rem;
                  transition: all 0.2s;
                }

                .form-label-group {
                  position: relative;
                  margin-bottom: 1rem;
                }

                .form-label-group input {
                  height: auto;
                  border-radius: 2rem;
                }
                
                .center {
                  display: block;
                  margin-left: auto;
                  margin-right: auto;
                  width: 50%;
                }
                
        </style>
    </head>
    
<body >
    <div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
          <a href="index.jsp"><img height="60px" width="200px" src="image/logo.png" class="center"></a>
        <div class="card card-signin flex-row my-5">
          <div class="card-img-left d-none d-md-flex">
             <!-- Background image for card set in CSS! -->
          </div>
          <div class="card-body">
            <h5 class="card-title text-center">Register</h5>
            <form class="form-signin" action="UserRegistration" method="POST">
              <div class="form-label-group">
                <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
              </div>

              <div class="form-label-group">
                <input type="email" name="email" class="form-control" placeholder="Email address" required>
              </div>
              
              <hr>

              <div class="form-label-group">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
              </div>
              
              <div class="form-label-group">
                <input type="password" name="re_password" class="form-control" placeholder="Confirm Password" required>
              </div>

              <button class="btn btn-lg btn-danger btn-block text-uppercase" type="submit">Register</button>
              <hr class="my-4">
              <p>Already have an account?</p>
              <a href="UserLogin.jsp"><button class="btn btn-lg btn-primary btn-block text-uppercase" type="button">Sign In</button></a>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

