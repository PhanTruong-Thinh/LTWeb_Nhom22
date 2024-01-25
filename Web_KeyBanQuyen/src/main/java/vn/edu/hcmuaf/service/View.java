package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.ProductsDao;
import vn.edu.hcmuaf.model.Products;
import vn.edu.hcmuaf.model.User;

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
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("auth");
        if (user!=null){
            String id = req.getParameter("maview");
            Products products = ProductsDao.getProduct(id);

            session.setAttribute("de", products);
            req.getRequestDispatcher("./single-product.jsp").forward(req,resp);
        }else {
            req.getRequestDispatcher("./Login.jsp").forward(req,resp);
        }

    }
}
