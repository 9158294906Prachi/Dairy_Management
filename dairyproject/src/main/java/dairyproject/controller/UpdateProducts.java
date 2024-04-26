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

@WebServlet("/update")
public class UpdateProducts extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		DairyDao dao=new DairyDao();
		
		Products products=dao.getProductsById(id);
		
			req.setAttribute("product", products );
			req.getRequestDispatcher("updatePage.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		double price = Double.parseDouble(req.getParameter("price"));
		String category = req.getParameter("category");
		String brand = req.getParameter("brand");
		String imageLink= req.getParameter("imageLink");

		Products products = new Products();
		products.setName(name);
		products.setPrice(price);
		products.setCategory(category);
		products.setBrand(brand);
		products.setImageLink(imageLink);
		
		HttpSession httpSession=req.getSession();
		Dairy dairy=(Dairy) httpSession.getAttribute("session");
		DairyDao dao=new DairyDao();
		try {
			int count=dao.updateProduct(id, products, dairy);
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

