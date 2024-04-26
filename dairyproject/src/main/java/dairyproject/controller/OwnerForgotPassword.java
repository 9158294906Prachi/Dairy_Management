package dairyproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dairyproject.dao.DairyDao;
import dairyproject.dto.Dairy;

@WebServlet("/forgot")
public class OwnerForgotPassword extends HttpServlet{
	
	DairyDao dao=new DairyDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long phone =Long.parseLong(req.getParameter("phone"));
		
		Dairy dairy=dao.findByPhone(phone);
		HttpSession httpSession=req.getSession();
		httpSession.setAttribute("dairy", dairy);
		
		if (dairy!=null) {
			req.getRequestDispatcher("forgotPassword.jsp").forward(req, resp);
		} else {
			req.setAttribute("msg", "Invalid number");
			req.getRequestDispatcher("checkPhonNo.jsp").forward(req, resp);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String password =req.getParameter("password");
		
		HttpSession httpSession=req.getSession();
		Dairy dairy=(Dairy) httpSession.getAttribute("dairy");
		
		dao.forgotPassword(dairy, password);
		
		req.setAttribute("msg", "Successfully password reseted!");
		
		req.getRequestDispatcher("ownerLogin.jsp").forward(req, resp);
	}
}
