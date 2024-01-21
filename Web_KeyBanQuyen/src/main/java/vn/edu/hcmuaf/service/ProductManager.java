package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.ProductsDao;
import vn.edu.hcmuaf.model.Products;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="ProductManager", value="/admin/ProductManager")
public class ProductManager  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = "all";
        try {
            String n = req.getParameter("select");

            List<Products> productsList = ProductsDao.getProductByDiretory(name);

            if (!n.isEmpty() && n!="all"){
                name = n;
                productsList = ProductsDao.getProductByDiretory(name);

            }

            req.setAttribute("listProduct", productsList);
            req.setAttribute("caterogy", name);
            req.getRequestDispatcher("./ManagerProduct.jsp").forward(req,resp);
        }catch (Exception e){
            e.printStackTrace();
        }

    }


}
