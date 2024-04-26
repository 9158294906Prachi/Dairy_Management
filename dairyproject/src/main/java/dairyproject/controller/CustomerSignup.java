package dairyproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dairyproject.dao.CustomerDao;
import dairyproject.dto.Customer;

@WebServlet("/user")
public class CustomerSignup extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("custemrName");
		long phone = Long.parseLong(req.getParameter("customerPhone"));
		String email = req.getParameter("customerEmail");
		String password = req.getParameter("customerPassword");

		Customer customer = new Customer();
		customer.setCustomerName(name);
		customer.setCustomerPhone(phone);
		customer.setCustomerEmail(email);
		customer.setCustomerPassword(password);
		
		CustomerDao dao= new CustomerDao();
		int result= dao.saveCustomer(customer);
		
		if (result == 1) {
			req.setAttribute("msg", "Successfully resister! Please login");

			req.getRequestDispatcher("customerSignup.jsp").forward(req, resp);
		} else {
			req.setAttribute("msg", "Account already exist! Please sign in or resister with another id and phone number.");
			req.getRequestDispatcher("customerSignup.jsp").forward(req, resp);
		}
	}
}
