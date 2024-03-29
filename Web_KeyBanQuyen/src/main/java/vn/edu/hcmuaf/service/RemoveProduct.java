package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.KhoDao;
import vn.edu.hcmuaf.dao.ProductsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RemoveProduct", value = "/admin/RemoveProduct")
public class RemoveProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("idPr");

        if (id!=null){
            ProductsDao.removeProduct(id);
            KhoDao.removeProduct(id);
        }

        req.getRequestDispatcher("/admin/ManagerProduct.jsp").forward(req,resp);
    }
}
