package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.ProductsDao;
import vn.edu.hcmuaf.model.Products;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "View", value = "/View")
public class View extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("maview");
        Products products = ProductsDao.getProduct(id);
        HttpSession session = req.getSession();
        session.setAttribute("de", products);
        req.getRequestDispatcher("./single-product.jsp").forward(req,resp);
    }
}
