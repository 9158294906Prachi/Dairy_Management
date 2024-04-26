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

@WebServlet("/seeProducts")
public class SeeProductsOfDairy extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		DairyDao dao = new DairyDao();
		Dairy dairy = dao.findDairy(id);

		req.setAttribute("msg", "Successfully login");

		req.setAttribute("list", dairy.getProductList());

		req.getRequestDispatcher("showProductToCustomer.jsp").forward(req, resp);

	}

}
