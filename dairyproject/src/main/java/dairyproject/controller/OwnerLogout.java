package dairyproject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class OwnerLogout extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("message", "Succefully Logout");
		
		HttpSession httpSession=req.getSession();
		httpSession.removeAttribute("session");
		
		req.getRequestDispatcher("ownerLogin.jsp").forward(req, resp);
	}
}
