package dairyproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dairyproject.dto.Customer;

@WebServlet("/buy")
public class BuyProducts extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession=req.getSession();
		Customer customer=(Customer) httpSession.getAttribute("customerSession");
		double total=Double.parseDouble(req.getParameter("total"));
		
		req.setAttribute("msg", customer.getCustomerName());
		req.setAttribute("total", total);
		req.getRequestDispatcher("paymentPage.jsp");
	}
}
