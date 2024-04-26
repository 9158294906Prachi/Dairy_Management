<%@page import="dairyproject.dto.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dairy Products</title>
<style>
  /* CSS Styles */
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('https://images7.alphacoders.com/133/1339254.png');
    background-size: cover;
    
  }

  .navbar {
    position: fixed;
            background: linear-gradient(to left, #f4f2f6 , #707070); 
            top: 0px;
            left: 0px;
            width: 100%;
            z-index: 1;
  }
  .add_button1{
 
  background-color: #04AA6D; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
  

  .navbar a {  
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;

  }

  .navbar a:hover { 
    color: black;
    background-color: ;
  }

  .search-container {
    float: right;
    margin-top: 10px;
  }

  .search-input {
    padding: 10px;
    width: 200px;
    border-radius: 6px;
    border: 1px solid #ccc;
    margin-bottom: 10px;
  }

  .search-button {
    padding: 10px 20px;
    border: none;
    background-color: #4CAF50;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .search-button:hover {
    background-color: #45a049;
  }

  .container {
    max-width: 1200px;
    margin: 20px auto;
    padding: 20px;
   background-color: rgba(255, 255, 255, 0.01); /* Transparent white background */
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }

  h1 {
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

  .product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    grid-gap: 20px;
  }

.product-item {
    padding: 20px;
    
    border-radius: 12px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }

  .product-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2), 0 0 0 3px #3498db; /* Highlight border effect */
  }

  .product-image {
    width: 100%;
    border-radius: 8px;
    margin-bottom: 10px;
  }

  .product-title {
    font-weight: bold;
    color: #333;
    margin-bottom: 5px;
  }

  .product-price {
    color: FFFF00;
    font-size: 1.2em;
  }

  .add-to-cart-button {
    padding: 10px 20px;
    border: none;
    background-color: red;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .add-to-cart-button:hover {
    background-color: #2980b9;
  }
  
  
  .add_Button1 {
    padding: 10px 20px;
    border: none;
    background-color: red;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  
    .add_Button1:hover{
    	background-color: #2980b9;
    }
</style>
</head>
<body>

<div class="navbar">
  <a href="customerAfterLogin.jsp" class="active">Home</a>
  <a href="showProductToCustomer.jsp">Products</a>
  <a href="homepage.jsp">Contact</a>
  <div class="search-container">
    <input type="text" class="search-input" id="searchInput" placeholder="Search...">
    <button class="search-button" onclick="searchProducts()">Search</button>
  </div>
</div>

<div class="container">
  <h1>Dairy Products</h1>
  <div class="product-grid">
    <div class="product-item">
      <img src="https://img.freepik.com/premium-photo/packaging-photoshoot-single-glass-milk-bottle-with-classic-milkman-f-creative-design-set_655090-718772.jpg" alt="Milk" class="product-image">
      <div class="product-title">Fresh Milk</div>
      <div class="product-price">$2.99</div>
      <button class="add-to-cart-button"><a style="color: white; text-decoration-line: none;"href="Cart.html">Add To Cart</a></button>
    </div>
    <div class="product-item">
      <img src="https://t3.ftcdn.net/jpg/00/56/40/96/360_F_56409659_PxCRmLtU7a1nr8FwZfblv658MId3JNhY.jpg" alt="Cheese" class="product-image">
      <div class="product-title">Cheddar Cheese</div>
      <div class="product-price">$4.99</div>
      <button class="add-to-cart-button"><a style="color: white; text-decoration-line: none;"href="Cart.html">Add To Cart</a></button>
    </div>
    <div class="product-item">
      <img src="https://c4.wallpaperflare.com/wallpaper/874/499/648/raspberry-food-fruit-cream-wallpaper-preview.jpg" alt="Yogurt" class="product-image">
      <div class="product-title">Greek Yogurt</div>
      <div class="product-price">$3.49</div>
      <button class="add-to-cart-button"><a style="color: white; text-decoration-line: none;"href="Cart.html">Add To Cart</a></button>
    </div>
    <div class="product-item">
      <img src="https://static.toiimg.com/thumb/50026315.cms?resizemode=4&width=1200" alt="Milk" class="product-image">
      <div class="product-title">Fresh Milk</div>
      <div class="product-price">$2.99</div>
      <button class="add-to-cart-button"><a style="color: white; text-decoration-line: none;"href="Cart.html">Add To Cart</a></button>
    </div>
   
   
    <!-- Add more product items as needed -->
    <%
	List<Products> list=(List<Products>)request.getAttribute("list");
	%>
	<%
		if (!list.isEmpty()) {
			for (Products products : list) {
		%>
    <div class="product-item">
    
      <img src="<%=products.getImageLink() %>" alt="Yogurt" class="product-image">
      <div class="product-title"><%=products.getName()%></div>
      <div class="product-price"><%=products.getPrice()%></div>
      <a href="addToCart?id=<%=products.getProductId()%>"><button class="add_Button1">Add To Cart</button></a>
    </div>
    <%
		}
		}
		%>
  </div>
</div>

<script>
  function searchProducts() {
    var input, filter, grid, items, title, i;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    grid = document.getElementsByClassName("product-grid")[0];
    items = grid.getElementsByClassName("product-item");

    for (i = 0; i < items.length; i++) {
      title = items[i].getElementsByClassName("product-title")[0];
      if (title.innerHTML.toUpperCase().indexOf(filter) > -1) {
        items[i].style.display = "";
      } else {
        items[i].style.display = "none";
      }
    }
  }
</script>

</body>
</html>