package dairyproject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dairyproject.dao.DairyDao;
import dairyproject.dto.Dairy;
import dairyproject.dto.Products;

@WebServlet("/deleteProd")
public class DeleteProductFromDairy extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		HttpSession httpSession=req.getSession();
		Dairy dairy=(Dairy) httpSession.getAttribute("session");
		DairyDao dao= new DairyDao();
		try {
			int count=dao.deleteProduct(id, dairy);
			if (count!=0) {
				
				List<Products> list= dairy.getProductList();
				req.setAttribute("list", list);
				req.getRequestDispatcher("showProductDairy.jsp").forward(req, resp);				
			}
		} catch (Exception e) {
			List<Products> list= dairy.getProductList();
			req.setAttribute("list", list);
			req.getRequestDispatcher("showProductDairy.jsp").forward(req, resp);
		}
	}
}
