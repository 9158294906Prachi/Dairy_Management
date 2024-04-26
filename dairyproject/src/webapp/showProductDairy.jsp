<%@page import="dairyproject.dto.Products"%>
<%@page import="dairyproject.dto.Dairy"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-image: url('https://img.freepik.com/premium-photo/pouring-milk-into-glass-wooden-table-dark-background-generative-ai-generated_627079-546.jpg');
            background-size: cover;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
       
          table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: rgba(255, 255, 255, 0); /* Transparent white background */
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
          
       
        }
        td {
            
        }
        td.actions {
            text-align: center;
        }
        button {
            background-color: #4caf50;
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
  
        button.delete {
            background-color: red;
        }
        .add-product-btn {
            text-align: center;
            margin-top: 20px;
        }
        .add-product-btn a {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
        }
        .add-product-btn a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%List<Products> list=(List)request.getAttribute("list");
%>
<div class="container">
    <h1>Product List</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>Brand</th>
                <th>Actions</th>
            </tr>
        </thead>
		<%if(!list.isEmpty()){
			for(Products products:list){
			%>
			<tr id="product-list">
			<td><%=products.getProductId()%></td>
			<td><%=products.getName() %></td>
			<td><%=products.getPrice() %></td>
			<td><%=products.getCategory()%></td>
			<td><%=products.getBrand() %></td>
			<td><a href="deleteProd?id=<%=products.getProductId()%>"><button style="background-color: red;">Delete</button></a>
			</td>
			<td><a class ="update" href="update?id=<%=products.getProductId()%>"><button>Update</button></a>
			</td>
		</tr>
		<%
		}}
		%>
    </table>

    <div class="add-product-btn">
        <a href="goto">Add Product</a>
    </div>
    <div class="add-product-btn">
        <a href="logout">Logout</a>
    </div>
</div>

</body>
</html>