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
import dairyproject.dto.Customer;
import dairyproject.dto.Dairy;

@WebServlet("/customer_login")
public class CustomerLogin extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		CustomerDao dao=new CustomerDao();
		int result = dao.customerLogin(email, password);
		
		if (result == 0) {
			req.setAttribute("msg", "Id not found! Please resister!");

			req.getRequestDispatcher("customerSignup.jsp").forward(req, resp);
		} else if (result == 1) {
			Customer customer=dao.findCustomer(email);
			List<Dairy> dairyList=dao.showAllDairy();			
			HttpSession httpSession=req.getSession();
			httpSession.setAttribute("customerSession", customer);
			
			req.setAttribute("msg", "Successfully login");
			
			req.setAttribute("list", dairyList);
			
			req.getRequestDispatcher("customerAfterLogin.jsp").forward(req, resp);
		} else {
			req.setAttribute("msg", "Wrong password! Please try again!");

			req.getRequestDispatcher("customerLogin.jsp").forward(req, resp);
		}

	}
}
