<%-- 
    Author     : Loh Xin Yi
--%>

<html>
    <head>
        <title>Login</title>
        
        <link rel="stylesheet" href="css/bootstrap/bootstrap-reboot.css">
        <link rel="stylesheet" href="css/bootstrap/bootstrap-grid.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            .login,
            .image {
              min-height: 100vh;
              min-width: 100vh;
            }

            .bg-image {
              background-image: url('image/login.jpg');
              background-size: cover;
              background-position: center;
            }

            .login-heading {
              font-weight: 300;
            }

            .btn-login {
              font-size: 0.9rem;
              letter-spacing: 0.05rem;
              padding: 0.75rem 1rem;
              border-radius: 2rem;
            }

            .form-label-group {
              position: relative;
              margin-bottom: 1rem;
            }
            
            .form-label-group input {
                  height: auto;
                  border-radius: 2rem;
            }

            .form-label-group>label {
              position: absolute;
              top: 0;
              left: 0;
              display: block;
              width: 100%;
              margin-bottom: 0;
              /* Override default `<label>` margin */
              line-height: 1.5;
              color: #495057;
              cursor: text;
              /* Match the input under the label */
              border: 1px solid transparent;
              border-radius: .25rem;
              transition: all .1s ease-in-out;
            }
            
            .center {
              display: block;
              margin-left: auto;
              margin-right: auto;
              width: 50%;
            }
        </style>
    </head>
    
    <body>
        <div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
            <a href="index.jsp"><img height="60px" width="200px" src="image/logo.png" class="center"></a>
            <hr>
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Welcome back!</h3>
              <form action="UserSignIn" method="POST">
                <div class="form-label-group">
                  <input type="email" name="email" class="form-control" placeholder="Email address" required autofocus>
                </div>

                <div class="form-label-group">
                  <input type="password" name="password" class="form-control" placeholder="Password" required>
                </div>
                  
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Sign in</button>
                <hr>
                
                <a href="UserSignUp.jsp"><button class="btn btn-lg btn-warning btn-block btn-login text-uppercase font-weight-bold mb-2" type="button">Haven't Sign Up yet?</button></a>
               
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    </body>
</html>
