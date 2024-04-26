<%@page import="dairyproject.dto.Customer"%>
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
    background: url('https://images.moneycontrol.com/static-mcnews/2017/05/paragmilk_1280-770x433.jpg?impolicy=website&width=770&height=431') no-repeat center center fixed;
    background-size: cover;

  }

  .navbar {
    position: fixed;
    background: linear-gradient(to left, #f4f2f6 , #707070); 
    top: 0px;
    left: 0px;
    width: 100%;
    z-index: 1;
    overflow: hidden;
    display: flex;
    /* Align items to the left and right */
    align-items: center; /* Center items vertically */

  }

  .navbar a {  
    display: block;
    color: black;
    text-align: center; 
    padding: 14px 20px;
    text-decoration: none;
  }

  .navbar a:hover { 
    color: white;
    background-color:;
  }

  .navbar .cart-logo {
    float: right;
    margin-left: 70%;
    padding: 14px 20px;
    text-align: center;
    text-decoration: none;
    color: black; /* Dark black color */
    background: ghostwhite; 
  }
.main1{
  margin-top: 5%;
}
  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0);
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
    background-color: #ffffff;
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    background-color: rgba(255, 255, 255, 0.0);
    padding: 20px;
    border: 2px solid transparent; /* Initial border style */
    transition: transform 0.3s ease, box-shadow 0.3s ease, border-color 0.3s ease; /* Add transition */
  }

  .product-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    border-color: #3498db; /* Highlight color */
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
    font-size: 1.2em;
  }

  .product-price {
    color: #f39c12;
    font-size: 1.2em;
  }

  .buy-button {
    padding: 10px 20px;
    border: none;
    background-color: #3498db;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: block;
    margin: 10px auto 0;
    text-align: center;
    text-decoration: none;
  }

  .buy-button:hover {
    background-color: #2980b9;
  }
  
  .remove_Button1{
   padding: 10px 20px;
    border: none;
    background-color: red;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: block;
    margin: 10px auto 0;
    text-align: center;
    text-decoration: none;
    
  }
  .remove_Button1:hover{
  
  	background-color:darkred;
  }

  .buy-all-button {
    padding: 10px 30px;
    border: none;
    background-color: #e74c3c;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: block;
    margin: 20px auto 0;
    text-align: center;
    text-decoration: none;
  }

  .buy-all-button:hover {
    background-color: #c0392b;
  }
</style>
</head>
<body>
	<%
	Customer customer = (Customer) request.getAttribute("customer");
	%>
<div class="navbar">
  <a href="customerAfterLogin.jsp" class="active">Home</a>
  <a href="customer_login?email=<%=customer.getCustomerEmail()%>&password=<%=customer.getCustomerPassword()%>">Products</a>
  <a href="homepage.jsp">Contact</a>
  <a href="#" class="cart-logo">&#128722;</a> <!-- Cart logo -->
</div>

<div class="main1">
<div class="container">
  <h1>Dairy Products</h1>
  <div class="product-grid">
    <%
	List<Products> list = (List<Products>) request.getAttribute("list");
	double total = 0;
	%>
	<% if(!list.isEmpty()) {
			for (Products products : list) {
				total+=products.getPrice();
		%>
    <div class="product-item">
      <img src="<%=products.getImageLink() %>" alt="Yogurt" class="product-image">
      <div class="product-title"><%=products.getName()%></div>
      <div class="product-price"><%=products.getPrice()%></div>
      <a href="paymentPage.jsp?price=<%=products.getPrice()%>" class="buy-button">Buy</a>
      <a href="removeProduct?id=<%=products.getProductId()%>"><button class="remove_Button1">Remove</button></a>
    </div>
    <%
		}
		}
		%>
    <!-- Add more product items as needed -->
  </div>
  <a href="paymentPage.jsp?price=<%=total %>" class="buy-all-button">Buy All Products</a>
</div>
</div>
</body>
</html>