<%@page import="dairyproject.dto.Products"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-position: center center;
        background-image: url('https://images7.alphacoders.com/133/1339254.png');
    }

    h1 {
        margin: 35px 0;
        font-size: 60px;
        display: flex;
        align-items: center;
        justify-content: center;
        text-transform: uppercase;
        background: black;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    form {
        max-width: 400px;
        margin: auto;
        background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="number"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }
    </style>
</head>
<body>
<%Products products=(Products)request.getAttribute("product"); %>
<h1>Add Product</h1>

<form id="add-product-form" action="update" method="post">

	<label for="name">Product Id:</label>
    <input type="text" id="name" name="id" value="<%=products.getProductId()%>" readonly="readonly">

    <label for="name">Product Name:</label>
    <input type="text" id="name" name="name" value="<%=products.getName()%>">
    
    <label for="price">Price:</label>
    <input type="number" id="price" name="price" value="<%=products.getPrice()%>">
    
    <label for="category">Category:</label>
    <input type="text" id="category" name="category" value="<%=products.getCategory()%>">
    
    <label for="brand">Brand:</label>
    <input type="text" id="brand" name="brand" value="<%=products.getBrand()%>">
    
    <label for="brand">Image Link:</label>
    <input type="text" id="imageLink" name="imageLink" value="<%=products.getImageLink()%>">
    
    <button type="submit">Save Product</button>
</form>

</body>
</html>