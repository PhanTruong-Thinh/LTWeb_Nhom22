package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.OdersDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateStatusOder", value = "/admin/UpdateStatusOder")
public class UpdateStatusOder extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("madh");
        if (id!=null){
            String status = req.getParameter("select");
            OdersDao.updateStatusOder(id, status);

        }
        req.getRequestDispatcher("/admin/updateOder.jsp").forward(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
