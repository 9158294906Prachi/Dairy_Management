package dairyproject.controller;

import java.io.IOException;

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

@WebServlet("/forgot_c")
public class CustomerForgotPassword extends HttpServlet{
	
	CustomerDao dao=new CustomerDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email= req.getParameter("email");
		
		Customer customer=dao.findByEmail(email);
		HttpSession httpSession=req.getSession();
		httpSession.setAttribute("customer", customer);
		
		if (customer!=null) {
			req.getRequestDispatcher("forgotCustomer.jsp").forward(req, resp);
		} else {
			req.setAttribute("msg", "Invalid email!");
			req.getRequestDispatcher("checkEmail.jsp").forward(req, resp);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String password =req.getParameter("password");
		
		HttpSession httpSession=req.getSession();
		Customer customer=(Customer) httpSession.getAttribute("customer");
		
		dao.forgotPasswordC(customer, password);
		
		req.setAttribute("msg", "Successfully password reseted!");
		
		req.getRequestDispatcher("customerSignup.jsp").forward(req, resp);
	}
}
