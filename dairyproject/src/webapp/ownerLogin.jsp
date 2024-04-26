<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Milky Way</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
      integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="ownerLogin.css" />
  </head>
  <body>
    
      <div class="card card0 border-0" id="main">
        <div class="row d-flex">
          <div class="col-lg-6">
            <div class="card1 pb-5">
              <div class="row">
                
              </div>
              <div
                class="row px-3 justify-content-center mt-4 mb-5 border-line"
              >
                <img src="./../assets/firstimg.png" />
              </div>
            </div>
          </div>
          <%String msg=(String)request.getAttribute("msg") ;
          if(msg!=null){
          %>
          <h3><%=msg %></h3>
          <%} %>
          
          <div class="col-lg-6">
            <div class="card2 card border-0 px-4 py-5">
              <div class="row mb-4 px-3">
                <h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
                <div class="facebook text-center mr-3">
                  <div class="fa fa-facebook"><i class="bi bi-facebook"></i></div>
                </div>
                <div class="twitter text-center mr-3">
                  <div class="fa fa-twitter"></div>
                </div>
                <div class="linkedin text-center mr-3">
                  <div class="fa fa-linkedin"></div>
                </div>
              </div>
              <div class="row px-3 mb-4">
                <div class="line"></div>
                <small class="or text-center">Or</small>
                <div class="line"></div>
              </div>
              <form action="owner_login">
                <div class="row px-3">
                <label class="mb-1"
                  ><h6 class="mb-0 text-sm">Phone No.</h6></label
                >
                <input class="mb-4" type="text" name="phone" placeholder="Enter a valid Phone No." required/>
              </div>
              <div class="row px-3">
                <label class="mb-1"
                  ><h6 class="mb-0 text-sm">Password</h6></label
                >
                <input type="password" name="password" placeholder="Enter password" required/>
              </div>
              <div class="row px-3 mb-4">
                <a href="checkPhonNo.jsp" class="ml-auto mb-0 text-sm">Forgot Password?</a>
              </div>
              <div class="row mb-3 px-3">
                <button type="submit" class="btn btn-blue text-center">
                  Login
                </button>
              </div>
              </form>
              <div class="row mb-4 px-3">
                <small class="font-weight-bold"
                  >Don't have an account?
                  <a class="text-danger" href="ownerSignup.jsp">Register</a></small
                >
              </div>
            </div>
          </div>
        </div>
        <div class="bg-blue py-4" id="footer">
          <div class="row px-3">
            <small class="ml-4 ml-sm-5 mb-2"
              >Copyright &copy; 2019. All rights reserved.</small
            >
            <div class="social-contact ml-4 ml-sm-auto">
              <span class="fa fa-facebook mr-4 text-sm"></span>
              <span class="fa fa-google-plus mr-4 text-sm"></span>
              <span class="fa fa-linkedin mr-4 text-sm"></span>
              <span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span>
            </div>
          </div>
        </div>
      </div>
  </body>
</html>