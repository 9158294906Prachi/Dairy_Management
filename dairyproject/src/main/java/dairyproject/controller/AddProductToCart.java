package dairyproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dairyproject.dao.CustomerDao;
import dairyproject.dto.Customer;

@WebServlet("/addToCart")
public class AddProductToCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession=req.getSession();
		Customer customer=(Customer) httpSession.getAttribute("customerSession");
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		CustomerDao dao=new CustomerDao();
		int result=dao.addProductToCustomerCart(id, customer);
		
		if (result==1) {
			req.setAttribute("list", customer.getProductList());
			
			req.setAttribute("customer", customer);
			
			req.getRequestDispatcher("addedProductToCart.jsp").forward(req, resp);
		} else {
			req.setAttribute("list", customer.getProductList());

			req.getRequestDispatcher("addedProductToCart.jsp").forward(req, resp);			
		}
	}
}
