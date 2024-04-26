package dairyproject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dairyproject.dao.CustomerDao;
import dairyproject.dao.DairyDao;
import dairyproject.dto.Customer;
import dairyproject.dto.Dairy;
import dairyproject.dto.Products;

@WebServlet("/removeProduct")
public class RemoveProductFromCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		HttpSession httpSession=req.getSession();
		Customer customer=(Customer) httpSession.getAttribute("customerSession");
		CustomerDao dao= new CustomerDao();
		try {
			int count=dao.deleteProductFromCustomer(id, customer);
			if (count!=0) {
				
				List<Products> list= customer.getProductList();
				
				req.setAttribute("customer", customer);
				
				req.setAttribute("list", list);
				req.getRequestDispatcher("addedProductToCart.jsp").forward(req, resp);				
			}
		} catch (Exception e) {
			List<Products> list= customer.getProductList();
			
			req.setAttribute("customer", customer);
			
			req.setAttribute("list", list);
			req.getRequestDispatcher("addedProductToCart.jsp").forward(req, resp);
		}
	}
}