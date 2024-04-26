package dairyproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dairyproject.dto.Customer;

@WebServlet("/mycart")
public class MyCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession=req.getSession();
		Customer customer=(Customer) httpSession.getAttribute("customerSession");
		
			req.setAttribute("customer", customer);
			req.setAttribute("list", customer.getProductList());

			req.getRequestDispatcher("addedProductToCart.jsp").forward(req, resp);
		
	}
}
