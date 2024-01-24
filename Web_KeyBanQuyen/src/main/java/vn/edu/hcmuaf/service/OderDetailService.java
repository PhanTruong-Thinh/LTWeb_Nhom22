package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.OdersDao;
import vn.edu.hcmuaf.model.Oders;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OderDetail", value = "/admin/OderDetail")
public class OderDetailService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        Oders oders = OdersDao.getOders(id);

        req.setAttribute("oder", oders);
        req.getRequestDispatcher("/admin/product-cart.jsp").forward(req,resp);
    }
}
