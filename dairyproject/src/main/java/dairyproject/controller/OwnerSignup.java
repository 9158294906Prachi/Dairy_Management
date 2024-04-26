package dairyproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dairyproject.dao.DairyDao;
import dairyproject.dto.Dairy;

@WebServlet("/saveDairy")
public class OwnerSignup extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String DairyName = req.getParameter("dairyName");
		long dairyPhone = Long.parseLong(req.getParameter("dairyPhone"));
		String dairyAddress = req.getParameter("dairyAddress");
		String password = req.getParameter("password");
		
		Dairy dairy= new Dairy();
		dairy.setDairyName(DairyName);
		dairy.setDairyPhone(dairyPhone);
		dairy.setDairyAddress(dairyAddress);
		dairy.setPassword(password);
		DairyDao dao=new DairyDao();
		int result= dao.saveDairy(dairy);
		
		if (result == 1) {
			req.setAttribute("msg", "Successfully resister! Please login");

			req.getRequestDispatcher("ownerLogin.jsp").forward(req, resp);
		} else {
			req.setAttribute("msg", "Account already exist! Please sign in or resister with another id and phone number.");
			req.getRequestDispatcher("ownerSignup.jsp").forward(req, resp);
		}
	}
}
