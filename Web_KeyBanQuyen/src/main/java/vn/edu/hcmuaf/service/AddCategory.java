package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.DirectorysDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddCategory", value = "/admin/AddCategory")
public class AddCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("madm");
        String ten = req.getParameter("ten");
        String status = req.getParameter("select");

        DirectorysDao.insertCategoryNew(id, ten, status);
        req.getRequestDispatcher("/admin/addcategory.jsp").forward(req,resp);
    }
}
