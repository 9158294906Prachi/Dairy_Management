<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Milky-Way</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" type="image/png" href="logo.png">
    <style>
html{
    scroll-behavior: smooth;
}

::-webkit-scrollbar{
    width: 15px;
}

::-webkit-scrollbar-track{
    border-radius: 5px;
    box-shadow: inset 0 0 10px rgba(0,0,0,0.25);
}

::-webkit-scrollbar-thumb{
    border-radius: 5px;
    background: linear-gradient(to top, #c72092 , #6c14d0);
}

/*section nav .icons i{
    margin: 0 4px;
    cursor: pointer;
    font-size: 18px;
    transition: 0.3s;
    
}

section nav .icons i:hover{
    color: #c72092;
}*/



 .social_icon{
    position: absolute;
    top: 50%;
    left: 98%;
    transform: translate(-50%,-50%);
    font-size: 19px;
}

 .social_icon i{
    margin: 8px 0;
    cursor: pointer;
    transition: 0.3s;
}

 .social_icon i:hover{
    color: #c72092;
}


.Branding{
    color: red;
    margin-top:0% ;
}



 .button2{
    position: absolute;
    margin-top:-5%;
    left: 58%;
    padding: 10px 20px;
    border-radius: 30px;
    background: linear-gradient(to right,#c72092 , #6c14d0);
}

.button2 a{
    color: white;
    text-decoration: none;
}

 .button2 i{
    color: white;
    margin-left: 5px;
    transition: 0.3s;
}

.button2:hover i{
    transform: translateX(6px);
}



    .products{
    z-index: ;
    width: 100%;
    height: 140vh;
    padding: 25px 0;
    /* background: linear-gradient(to right, #e9e5e8,#f1ecf7,#efe8f7); */

}

.products h1{
    margin: 35px 0;
    font-size: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-transform: uppercase;
    background: linear-gradient(to right, #c72092,#6c14d0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;    
}

.products .box{
    width: 90%;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-gap: 25px 0;
}

.card:hover{
    transform: scale(0.9);
}

.products .box .card{
    width: 290px;
    height: 450px;
    box-shadow: 0 0 8px #6c14d0;
    border-radius: 5px;
    text-align: center;
    padding: 10px 20px;
    background: #f6f6f6;
    transition-duration: 1s;

}

.products .box .card .small_card{
    display: flex;
    flex-flow: column;
    position: absolute;
    margin: 10px 0;
    transform: translateX(-20px);
    transition: 0.3s;
    opacity: 0;
}

.products .box .card:hover .small_card{
    transform: translateX(2px);
    cursor: pointer;
    opacity: 1;
}

.products .box .card .image{
    display: flex;
    align-items: center;
    justify-content: center;
}

.products .box .card .image img{
    width: 150px;
    margin: 15px 0;
    transition: 0.3s;
}

.products .box .card:hover .image img{
    transform: scale(1.1);
}

.products .box .card .small_card i{
    width: 45px;
    height: 45px;
    border-radius: 5px;
    font-size: 18px;
    margin: 2px 0;
    line-height: 40px;
    border: 2px solid #999999;
    transition: 0.2s;
}

.products .box .card .small_card i:hover{
    color: #c72092;
    
}

.products .box .card .products_text h2{
    font-size: 30px;
    margin-top: 15px;
}

.products .box .card .products_text p{
    color: #91919191;
    line-height: 21px;
    margin: 8px 0;
}

.products .box .card .products_text h3{
    margin: 7px 0;
}

.products .box .card .products_text .products_star{
    color: orange;
    margin-bottom: 19px;
    cursor: pointer;
}

.products .box .card .products_text .btn{
    text-decoration: none;
    padding: 10px 20px;
    background: linear-gradient(to right, #c72092 , #6c14d0);
    color: white;
}

        /* Reset some default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {

            width: 80%;
            margin: 0 auto;
            overflow: hidden;
        }



 .gifimage{
            height: 60vh;
            margin-top: -5%;
            margin-left: 20%;
            border: 3px solid #c72092 ;
/*            border: 5px solid #7CB9E8;*/
            box-shadow: 5px 7px linear-gradient(to right,#c72092 , #6c14d0) ;
            border-radius: 70px;
/*            background: 5px linear-gradient(to right,#c72092 , #6c14d0);*/
            background-repeat: no-repeat;
            border-top-left-radius:20% ;
            border-bottom-right-radius: 20%;
            transition-duration: 5s;
        } 
       
.gifimage:hover{
    /*transform: rotateZ(45deg);
    transform: rotate3d(0,360,0,180deg);
    z-index: -1;*/

    transition-duration: 2s;
    border-top-left-radius:20% ;
    border-bottom-right-radius: 20%;
/*    border-radius: 20%;*/
    
  }

  .image5{
     border-radius: 70px;
      transition-duration: 5s;

  }

  .image5:hover{
   transform: rotateZ(45deg);
    transform: rotate3d(0,360,0,360deg);
}



        .list1{
            color: #fff;
            border-radius: 10px;
            text-decoration: none;
        }

.login a {
            background: linear-gradient(to left, #f4f2f6 , #707070);
            color: black;
            padding: 5px 12px;
            border-radius: 10px;
            text-decoration: none;
            transition: background-color 0.3s ease;
            margin-top: 7px;
            margin-left: 250px;

        }

        .login a:hover {
            background-color:#c72092;
            transition-duration: 2s, 1s;
            transition-property: background-color;

        }
        header {
            position: fixed;
            background: linear-gradient(to left, #f4f2f6 , #707070); 
            top: 0px;
            left: 0px;
            width: 100%;
            z-index: 1;
            
        }

        header h1 {
            float: left;
             background: linear-gradient(to right, #c72092,#6c14d0);
            -webkit-background-clip: text;
             -webkit-text-fill-color: transparent;
        }

        nav {
            float: right;
            
        }

    
        nav ul li {
            display: inline;
            margin-right: 10px;
        }

        nav ul li a {
            text-decoration: none;
            font-weight: 400;
            font-size: 20px;
            color: black;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: none;
            color: #c72092;  
            border-radius: 25%;
            transition-duration: 0.4s;
        }






/*Products        */







.ourproduct{
    background: linear-gradient(to right, #c72092,#6c14d0);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        text-align: center ;

}



        .banner {
            background-image: url('https://static.vecteezy.com/system/resources/previews/027/100/946/large_2x/dairy-products-including-milk-cottage-cheese-and-eggs-placed-on-a-blue-background-the-view-free-photo.jpg');
            padding: 250px 0;
            text-align: center;
             background-size: cover;
             background-position: center;
            height: 100vh;
        }

        .about {
            background-color: r: 135, g: 206, b: 235;
            padding: 50px 0;
            text-align: center;
        }

        .about .btn {
            background-color: red;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .about .btn:hover {
            background-color: yellowgreen;
            color: green;
            border: 2px solid #FF9900;
        transform: scale(1.1);
            transition-duration: 0.5s;
        }

        .products {
            padding: 50px 0;
            text-align: center;
        }

        .product {
            display: inline-block;
            width: 30%;
            margin: 0 1.5%;
            vertical-align: top;
        }

        .product img {
            width: 100%;
            border-radius: 5px;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }
          nav {
    background-color: r: 135, g: 206, b: 235;

    overflow: hidden;
  }
  
  /* Style the links inside the navigation bar */
  nav a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
  }
  
  /* Change color on hover */
  nav a:hover {
    color: black;
  }

 


  
/*Productsss*/

.background {
  display: flex;
  min-height: 100vh;
}

.container123 {
  flex: 0 1 700px;
  margin: auto;
  padding: 10px;
}

.screen {
  position: relative;
  background: #3e3e3e;
  border-radius: 15px;
}

.screen:after {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 20px;
  right: 20px;
  bottom: 0;
  border-radius: 15px;
  box-shadow: 0 20px 40px rgba(0, 0, 0, .4);
  z-index: -1;
}

.screen-header {
  display: flex;
  align-items: center;
  padding: 10px 20px;
  background: #4d4d4f;
  border-top-left-radius: 15px;
  border-top-right-radius: 15px;
}

.screen-header-left {
  margin-right: auto;
}

.screen-header-button {
  display: inline-block;
  width: 8px;
  height: 8px;
  margin-right: 3px;
  border-radius: 8px;
  background: white;
}

.screen-header-button.close {
  background: #ed1c6f;
}

.screen-header-button.maximize {
  background: #e8e925;
}

.screen-header-button.minimize {
  background: #74c54f;
}

.screen-header-right {
  display: flex;
}

.screen-header-ellipsis {
  width: 3px;
  height: 3px;
  margin-left: 2px;
  border-radius: 8px;
  background: #999;
}

.screen-body {
  display: flex;
}

.screen-body-item {
  flex: 1;
  padding: 50px;
}

.screen-body-item.left {
  display: flex;
  flex-direction: column;
}

.app-title {
  display: flex;
  flex-direction: column;
  position: relative;
  color: #ea1d6f;
  font-size: 26px;
}

.app-title:after {
  content: '';
  display: block;
  position: absolute;
  left: 0;
  bottom: -10px;
  width: 25px;
  height: 4px;
  background: #ea1d6f;
}

.app-contact {
  margin-top: auto;
  font-size: 8px;
  color: #888;
}

.app-form-group {
  margin-bottom: 15px;
}

.app-form-group.message {
  margin-top: 40px;
}

.app-form-group.buttons {
  margin-bottom: 0;
  text-align: right;
}

.app-form-control {
  width: 100%;
  padding: 10px 0;
  background: none;
  border: none;
  border-bottom: 1px solid #666;
  color: #ddd;
  font-size: 14px;
  text-transform: uppercase;
  outline: none;
  transition: border-color .2s;
}

.app-form-control::placeholder {
  color: #666;
}

.app-form-control:focus {
  border-bottom-color: #ddd;
}

.app-form-button {
  background: none;
  border: none;
  color: #ea1d6f;
  font-size: 14px;
  cursor: pointer;
  outline: none;
}

.app-form-button:hover {
  color: #b9134f;
}

.credits {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
  color: #ffa4bd;
  font-family: 'Roboto Condensed', sans-serif;
  font-size: 16px;
  font-weight: normal;
}

.credits-link {
  display: flex;
  align-items: center;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}

.dribbble {
  width: 20px;
  height: 20px;
  margin: 0 5px;
}

@media screen and (max-width: 520px) {
  .screen-body {
    flex-direction: column;
  }

  .screen-body-item.left {
    margin-bottom: 30px;
  }

  .app-title {
    flex-direction: row;
  }

  .app-title span {
    margin-right: 12px;
  }

  .app-title:after {
    display: none;
  }
}

@media screen and (max-width: 600px) {
  .screen-body {
    padding: 40px;
  }

  .screen-body-item {
    padding: 0;
  }
}

/*Aboutt ussss*/


.about{
    width: 100%;
    height: 100vh;
    padding: 35px ;
    margin-top: 30px;
    /* background: linear-gradient(to right, #e9e5e8,#f1ecf7,#efe8f7); */

}

.about h1{
    font-size: 60px;
    margin-top: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: black;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    text-transform: uppercase;
}

.about h1 span{
    background: linear-gradient(to right, #c72092 , #6c14d0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    margin-left: 15px;
}

.about .about_main{
    position: relative;
    top: 40%;
    left: 50%;
    transform: translate(-50%,-50%);
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.about .about_main .about_image{
    display: flex;
    
    margin-top: 50px;
}

.about .about_main .about_image .about_small_image{
    display: flex;
    flex-direction: column;
    position: relative;
    top: 15px;
    
}

.about .about_main .about_image .about_small_image img{
    height: 92px;
    margin: 5px 0;
    cursor: pointer;
    background: linear-gradient(to right, #f4f2f6 , #707070);
    display: block;
    border-radius: 6px;
    padding: 5px 5px;
    box-shadow: 0 0 6px rgba(0,0,0,0.6);
    opacity: 0.8;
    transition: 0.3s;
}

.about .about_main .about_image .about_small_image img:hover{
    opacity: 1;
}

.about .about_main .image_contaner{
    padding: 10px;
    display: flex;
    
}
/* .image_contaner{

    position: ;
} */

.about .about_main .image_contaner img{
    border: 3px solid #111111;
    border-radius: 20px;
    height: 430px;
    /* width: 300%; */
    padding: 40px;
    box-shadow: 0 0 8px #0f0f0f;
    background: linear-gradient(to right, #f4f2f6 , #707070);


}

.about .about_main .about_text{
    margin-top: 45px;
    
}

.about .about_main .about_text p{
    background: linear-gradient(to right, #c72092 , #6c14d0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    line-height: 22px;
    width: 600px;
    text-align: justify;
    padding: 25px 30px;
    border: 2px solid #282727;
    border-radius: 20px;
    box-shadow: 0 0 8px #121212;
}

.about .about_btn{
    color: black;
    background: none;
    position: relative;
    top: 10%;
    left: 50%;
    transform: translate(-50% , -50%);
    padding: 10px 25px;
    border: 2px solid #c72092;
    text-decoration: none;
    box-shadow: 0 0 8px #c72092;
    transition: 0.5s;
    margin-right: 45%;
    margin-top: 20px;
    
}

.about .about_btn:hover{
    border: 2px solid transparent;
    background: #c72092;
    color: white;
}

/*Services*/

.services{
    height: 80vh;
    width: 70%;
    margin: 0 auto;
    margin-top: 5%;
    text-align: center;
    padding: 80px 0 10px 0;
    
}

.services h1{
    font-size: 60px;
    text-transform: uppercase;
}

.services h1 span{
    margin-left: 15px;
    background: linear-gradient(to left, #c72092 , #6c14d0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;    
}

.services .services_cards{
    width: 80%;
    margin: 0 auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;
    top: 50px;
}

.services .services_box i{
    font-size: 60px;
    color: orange;
    margin: 20px 0;
    cursor: pointer;
}

.services .services_box h3{
    margin-bottom: 12px;
    font-size: 19px;
}

.services .services_box p{
    text-align: center;
    color: #919191;
    margin-bottom: 60px;
}
  
</style>
</head>
<body>
<div id="home3">
    <header >
        <div class="container">
            <h1>Milky-Way</h1>
            <nav>
                <ul class="list">
                    <li class ="list1"><a href="#home3">Home</a></li>
                    <li class ="list1"><a href="#about3">About</a></li>
                    <li class ="list1"><a href="#products3">Products</a></li>
                    <li class ="list1"><a href="#contact3">Contact</a></li>
                    <li class ="list1"><a href="#services3">Services</a></li>
                    <li class ="login"><a href="select.jsp">Login</a></li>
                </ul>

  <!-- After Login  -->
            <!-- <div class="icons" >
               <a href="https://accounts.nike.com/lookup?client_id=4fd2d5e7db76e0f85a6bb56721bd51df&redirect_uri=https://www.nike.com/auth/login&response_type=code&scope=openid%20nike.digital%20profile%20email%20phone%20flow%20country&state=4ae07edef8e646f6ad7eb8cc357ee645&code_challenge=0W3Ho3cFp39vD0fioTt-12nwAmyDn4WBrtJl9tJMXOs&code_challenge_method=S256"> <i class="fa-solid fa-heart"></i></a>
               <a href="https://www.nike.com/sg/cart"><i class="fa-solid fa-cart-shopping"></i></a>
                <a href="https://accounts.nike.com/lookup?client_id=4fd2d5e7db76e0f85a6bb56721bd51df&redirect_uri=https://www.nike.com/auth/login&response_type=code&scope=openid%20nike.digital%20profile%20email%20phone%20flow%20country&state=31cdd57e994441bf8f51e732854904ee&code_challenge=UMF2FoejDRo5P-PqxqvAhX6V2EUL9yQNbXUOEWVXDB0&code_challenge_method=S256"><i class="fa-solid fa-user"></i></a>
            </div> -->
            </nav>  

             
        </div>
        <div id="image123"> 
        </div>      
    </header>
<div>

    <section class="banner">
         
        <div class="container">
            
        </div>
        <!-- <img class="image5" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE8xwkp8vNMCI1cGvA45LxM28JWjPwHKIkiZJ-39rytT9zw1YTYGHrEGlKaGxroXh-3As&usqp=CAU"> -->
            <div class="social_icon">
                <a href="https://www.facebook.com/"> <i class="fa-brands fa-facebook-f"></i></a>
                <a href="https://www.twitter.com"></a><i class="fa-brands fa-twitter"></i></a>
                <a href="https://www.instagram.com/"></a><i class="fa-brands fa-instagram"></i></a>
                <a href="https://www.linkedin.com"></a><i class="fa-brands fa-linkedin-in"></i></a>
            </div>
        <!-- <div class ="Branding">
            <h1>Oraganic</h1><br>
            <h3>Milk Products</h3><br>
            <h4>Free Delivary of Fresh Milky Products</h4><br>
            <h4>from Local Farm</h4>
        </div> -->
        <!-- <video class ="gifimage" src="vedio.mp4" autoplay loop></video> -->

          <video class ="gifimage" autoplay muted loop autoplay muted>
                 <source src="images/vedio.mp4" type="video/mp4" />
         </video>
        <!-- <img class ="gifimage" src="https://gifs.com/gif/molding-mozzarella-cheese-homemade-mozzarella-how-to-make-mozzarella-at-home-homemade-mozzarella-ANz5Pj"> -->
        </div>
        <div class="button2">
                <a href="customerSignup.jsp">SHOP NOW</a>
                <i class="fa-solid fa-chevron-right"></i>
            </div>

    </section>

</div>
























<!-- Products -->



















    <section class="products" id="products3">
        <div class="container">
            <h1 class="ourproduct">Our Products</h1>
        </div>

        <div class="box">
            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://images.pexels.com/photos/2198626/pexels-photo-2198626.jpeg?cs=srgb&dl=pexels-alexas-fotos-2198626.jpg&fm=jpg">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">MILK</h2>
                    <p>
                        Freshly sourced from dairy cows.
                    </p>
                    <h3>75.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerLogin.jsp" class="btn">Add To Cart</a>
                </div>           
            </div>


            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://static.vecteezy.com/system/resources/previews/015/763/405/non_2x/cheese-different-delicious-cheese-types-selected-focus-in-poster-format-free-photo.jpg">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">Cheese</h2>
                    <p>
                        Delicious cheeses.
                    </p>
                    <h3>200.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerSignup.jsp" class="btn">Add To Cart</a>
                </div>

                
            </div>
            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://img.freepik.com/free-photo/avocado-avocado-yogurt-products-made-from-avocado-food-nutrition-concept_1150-26288.jpg">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">Yogurt</h2>
                    <p>
                        Smooth and creamy yogurt.
                    </p>
                    <h3>60.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerSignup.jsp" class="btn">Add To Cart</a>
                </div>

                
            </div>
            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://png.pngtree.com/thumb_back/fh260/background/20230426/pngtree-slice-of-a-butter-on-a-wooden-board-with-herbs-image_2516278.jpg">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">Butter</h2>
                    <p>
                        Freshly sourced from dairy cows.
                    </p>
                    <h3>250.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerSignup.jsp" class="btn">Add To Cart</a>
                </div>
            </div>


            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-1274894_640.jpg">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">Cream</h2>
                    <p>
                        Freshly sourced from dairy cows.
                    </p>
                    <h3>80.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerSignup.jsp" class="btn">Add To Cart</a>
                </div>      
            </div>
            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://c.ndtvimg.com/2023-02/qit4m6po_maharashtrian-style-buttermilk_625x300_07_February_23.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=675">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">Taak</h2>
                    <p>
                        Freshly sourced from dairy cows.
                    </p>
                    <h3>20.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerSignup.jsp" class="btn">Add To Cart</a>
                </div>         
            </div>


            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://t3.ftcdn.net/jpg/02/06/84/10/360_F_206841056_O0nsHuNo2lGdE4kQiNPxSSH8J3c5UhOj.jpg">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">Shrikhand</h2>
                    <p>
                        Freshly sourced from dairy cows.
                    </p>
                    <h3>250.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerSignup.jsp" class="btn">Add To Cart</a>
                </div>           
            </div>
            <div class="card">

                <div class="small_card">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-share"></i>
                </div>

                <div class="image12">
                    <img height="250px" width="250px" src="https://img.onmanorama.com/content/dam/mm/en/food/in-season/deepavali/images/peda-diwali-sweet-main.jpg">
                </div>

                <div class="products_text">
                    <h2  class="text-focus-in">Peda</h2>
                    <p>
                        Freshly sourced from dairy cows.
                    </p>
                    <h3>200.00</h3>
                    <div class="products_star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <a href="customerSignup.jsp" class="btn">Add To Cart</a>
                </div>           
            </div>
        </div>


    </section>




<br><br><br><br><br><br><br><br><br>












<!--  <section class="about" style="background: lightgrey;" id=about3>
        <div class="container">
           
            <p>We are committed to providing high-quality dairy products sourced from our own farm. Learn more about our journey and values.</p>
            <div><br>
            <h2>About Us</h2><br><br>
            <a href="#" class="btn">Read More</a>
        </div>
        </div>
    </section>
 -->


 <div class="about" id="about3">
        
        <h1 class="tracking-in-expand"><span>About</span></h1>

        <div class="about_main">
            <div class="about_image">
                <div class="about_small_image">
                    <img src="https://t3.ftcdn.net/jpg/02/81/00/18/360_F_281001895_usd6SIfy6zjBCf7hkVtFGKpG4B3zbwWM.jpg" onclick="functio(this)">
                    <img src="https://st.depositphotos.com/2390789/4848/i/450/depositphotos_48481337-stock-photo-cheddar-cheese.jpg" onclick="functio(this)">
                    <img src="https://t3.ftcdn.net/jpg/00/56/40/96/360_F_56409659_PxCRmLtU7a1nr8FwZfblv658MId3JNhY.jpg" onclick="functio(this)">
                    <img src="https://images.pexels.com/photos/128865/pexels-photo-128865.jpeg?auto=compress&cs=tinysrgb&w=600" onclick="functio(this)">
                </div>

                <div class="image_contaner">
                    <img src="https://etimg.etb2bimg.com/photo/96331122.cms" id="imagebox">
                </div>

            </div>

            <div class="about_text">
                <p>
                   At Parag, each day is filled with providing new inspiration to consumers, to create fresh trends in dairy consumption. Each of our brands Gowardhan, Go, Topp Up and Pride of Cows, play a central role in people's lives – they awake to them and consume them all day long. Each with their own unique taste and place in life. We are passionate about making milk moments a source of delight and inspiration.<br>

                    From making ghee which is as close to home made ghee,the first packaged shredded cheeses designed for convenience and the first cheese in a squeeze tube to delight children, to cream cheeses in many exotic flavours to make entertaining exciting,the first natural fruits based yogurts, or making fresh Paneer with extended shelf life for convinience and India’s freshest, highly nourishing farm to home milk. Parag has led successful dairy farming in India.
                </p>
            </div>

        </div>
<center>
        <a  href="https:" class="about_btn">Shop Now</a>
    </center>

        <script>
            function functio(small){
                var full = document.getElementById("imagebox")
                full.src = small.src
            }
        </script>
        
    </div>




    <div class="services" id="services3">
        <h1 class="tracking-in-expand">our<span>services</span></h1>

        <div class="services_cards">
            <div class="services_box">
                <i class="fa-solid fa-truck-fast"></i>
                <h3>Fast Delivery</h3>
                <p>
                   Door Steps Delivery.
                </p>
            </div>

            <div class="services_box">
                <i class="fa-solid fa-rotate-left"></i>
                <h3>1 Hour Replacement</h3>
                <p>
                    Assure Replacement.
                </p>
            </div>

            <div class="services_box">
                <i class="fa-solid fa-headset"></i>
                <h3>24 x 7 Support</h3>
                <p>
                    Call Us 24 X 7.
                </p>
            </div>
        </div>

    </div>






<div id ="contact3">
        
    <div class="background">
            
  <div class="container123">
    <div class="screen">
      <div class="screen-header">
        <div class="screen-header-left">
          <div class="screen-header-button close"></div>
          <div class="screen-header-button maximize"></div>
          <div class="screen-header-button minimize"></div>
        </div>
        <div class="screen-header-right">
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
        </div>
      </div>
      <div class="screen-body">
        <div class="screen-body-item left">
          <div class="app-title">
            <span>CONTACT</span>
            <span>US</span>
          </div>
          <div class="app-contact">CONTACT INFO : +91 9356373984</div>
        </div>
        <div class="screen-body-item">
          <div class="app-form">
            <div class="app-form-group">
              <input class="app-form-control" placeholder="NAME" value="">
            </div>
            <div class="app-form-group">
              <input class="app-form-control" placeholder="EMAIL">
            </div>
            <div class="app-form-group">
              <input class="app-form-control" placeholder="CONTACT NO">
            </div>
            <div class="app-form-group message">
              <input class="app-form-control" placeholder="MESSAGE">
            </div>
            <div class="app-form-group buttons">
              <button class="app-form-button">CANCEL</button>
              <button class="app-form-button">SEND</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="credits">
      inspired by
      <a class="credits-link" href="https://dribbble.com/shots/2666271-Contact" target="_blank">
        <svg class="dribbble" viewBox="0 0 200 200">
          <g stroke="#ffffff" fill="none">
            <circle cx="100" cy="100" r="90" stroke-width="20"></circle>
            <path d="M62.737004,13.7923523 C105.08055,51.0454853 135.018754,126.906957 141.768278,182.963345" stroke-width="20"></path>
            <path d="M10.3787186,87.7261455 C41.7092324,90.9577894 125.850356,86.5317271 163.474536,38.7920951" stroke-width="20"></path>
            <path d="M41.3611549,163.928627 C62.9207607,117.659048 137.020642,86.7137169 189.041451,107.858103" stroke-width="20"></path>
          </g>
        </svg>
        
      </a>
    </div>
  </div>
</div>

    </div>

    <footer id="footer3">
        <div class="container">
            <p>&copy; 2024 Dynamic Dairy. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
