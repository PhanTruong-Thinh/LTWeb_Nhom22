package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.DirectorysDao;
import vn.edu.hcmuaf.dao.ProductsDao;
import vn.edu.hcmuaf.dao.StatusDao;
import vn.edu.hcmuaf.model.Products;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name ="ProductDetail", value = "/admin/ProductDetail")
public class ProductDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("productId");

        Products product = new Products();
        if (id!=null && !id.isEmpty()  ){
         product = ProductsDao.getProduct(id);
        }else {
            String ten= req.getParameter("ten");
            double price  = Double.parseDouble(req.getParameter("price"));
            String baohanh = req.getParameter("tgbh");
            String hangsx = req.getParameter("hang");
            String version = req.getParameter("version");
            int number = Integer.parseInt(req.getParameter("number"));
            String type = req.getParameter("type");
            String hangdung = req.getParameter("time");
            String mota = req.getParameter("text");
            String statusID = req.getParameter("select");
            String category = req.getParameter("select1");
            id =req.getParameter("masp");

            ProductsDao.updateProduct(id, category, ten, type, mota, price, version, hangsx, hangdung, baohanh, number, statusID);
        }
        HttpSession session = req.getSession();
        session.setAttribute("pro", product);
        req.getRequestDispatcher("/admin/product-edit.jsp").forward(req,resp);
    }
}
