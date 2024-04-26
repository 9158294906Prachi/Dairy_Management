<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="select.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700|Open+Sans">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link
      href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link
      href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      rel="stylesheet"
      id="bootstrap-css"
    />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
    body {
      font-family: "Open Sans", sans-serif;
    }
    h2 {
      color: #333;
      text-align: center;
      text-transform: uppercase;
      font-family: "Roboto", sans-serif;
      font-weight: bold;
      position: relative;
      margin: 30px 0 60px;
    }
    h2::after {
      content: "";
      width: 100px;
      position: absolute;
      margin: 0 auto;
      height: 3px;
      background: #8fbc54;
      left: 0;
      right: 0;
      bottom: -10px;
    }
    .col-center {
      margin: 0 auto;
      float: none !important;
    }
    .carousel {
      padding: 0 70px;
    }
    .carousel .carousel-item {
      color: #999;
      font-size: 14px;
      text-align: center;
      overflow: hidden;
      min-height: 290px;
    }
    .carousel .carousel-item .img-box {
      width: 135px;
      height: 135px;
      margin: 0 auto;
      padding: 5px;
      border: 1px solid #ddd;
      border-radius: 50%;
    }
    .carousel .img-box img {
      width: 100%;
      height: 100%;
      display: block;
      border-radius: 50%;
    }
    .carousel .testimonial {
      padding: 30px 0 10px;
    }
    .carousel .overview {	
      font-style: italic;
    }
    .carousel .overview b {
      text-transform: uppercase;
      color: #7AA641;
    }
    .carousel-control-prev, .carousel-control-next {
      width: 40px;
      height: 40px;
      margin-top: -20px;
      top: 50%;
      background: none;
    }
    .carousel-control-prev i, .carousel-control-next i {
      font-size: 68px;
      line-height: 42px;
      position: absolute;
      display: inline-block;
      color: rgba(0, 0, 0, 0.8);
      text-shadow: 0 3px 3px #e6e6e6, 0 0 0 #000;
    }
    .carousel-indicators {
      bottom: -40px;
    }
    .carousel-indicators li, .carousel-indicators li.active {
      width: 12px;
      height: 12px;
      margin: 1px 3px;
      border-radius: 50%;
      border: none;
    }
    .carousel-indicators li {	
      background: #999;
      border-color: transparent;
      box-shadow: inset 0 2px 1px rgba(0,0,0,0.2);
    }
    .carousel-indicators li.active {	
      background: #555;		
      box-shadow: inset 0 2px 1px rgba(0,0,0,0.2);
    }
    </style>
  </head>
  <body>
    <nav>
      <div class="nav-bar">
        <i class="bx bx-menu sidebarOpen"></i>
        <span class="logo navLogo"><a href="#">Milky Way</a></span>

        <div class="menu">
          
          <ul class="nav-links">
            <li><a href="homepage.jsp">Home</a></li>
            <li><a href="homepage.jsp">About</a></li>
            <li><a href="homepage.jsp">Products</a></li>
            <li><a href="homepage.jsp">Services</a></li>
            <li><a href="homepage.jsp">Contact</a></li>
          </ul>
        </div>

        <div class="darkLight-searchBox">
          <div class="dark-light">
            <i class="bx bx-moon moon"></i>
            <i class="bx bx-sun sun"></i>
          </div>

          <div class="searchBox">
            <div class="searchToggle">
              <i class="bx bx-x cancel"></i>
              <i class="bx bx-search search"></i>
            </div>

            <div class="search-field">
              <input type="text" placeholder="Search..." />
              <i class="bx bx-search"></i>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <br/>
    <br/>
    <br/>
    <!-- -------------------------------------------- end navbar -------------------------------------------- -->
    <div class="container-xl">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2>Login Here</h2>
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>   
            <div class="carousel-inner p-4">
              <div class="carousel-item active">
                <div class="img-box"><img src="https://www.kindpng.com/picc/m/364-3647905_product-owner-clipart-transparent-background-hd-png-download.png" alt=""></div>
                <p class="testimonial">Welcome to milky way! Come and explore the world of dairy products. Come and boost your business.</p>
                <p class="overview"><b>Owner</b>, Dairy Manager</p>
                <br>
                <a href="ownerSignup.jsp" class="button-5" role="button" style="color: white;">Login/Resister</a>
              </div>
              <div class="carousel-item">
                <div class="img-box"><img src="https://www.pngkit.com/png/full/358-3586266_clientes-clientes-imagenes-png.png" alt=""></div>
                <p class="testimonial">Welcome to milky way! Come and explore the world of dairy products. Come and check out the products. Enjoy the delicacies.</p>
                <p class="overview"><b>Customer</b></p>
                <a href="customerSignup.jsp" class="button-5" role="button" style="color: white;">Login/Resister</a>
              </div>
              <div class="carousel-item">
                <div class="img-box"><img src="https://img.freepik.com/free-vector/customer-service-technical-support_24877-52930.jpg?size=338&ext=jpg&ga=GA1.1.1700460183.1712188800&semt=ais" alt=""></div>
                <p class="testimonial">The nutrients and types of fat in dairy are involved with bone health, cardiovascular disease, and other conditions. Calcium, vitamin D, and phosphorus are important for bone building, and the high potassium content of dairy foods can help lower blood pressure.</p>
                <p class="overview"><b>Hello I am Customer Care</b>, Support Center</p>
                <a href="homepage.jsp" class="button-5" role="button" style="color: white;">Click here</a>
              </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
              <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
              <i class="fa fa-angle-right"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
    

  </body>
</html>
