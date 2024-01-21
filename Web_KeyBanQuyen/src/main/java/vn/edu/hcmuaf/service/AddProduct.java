package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddProduct", value = "/admin/AddProduct")
public class AddProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("masp");
        String ten= req.getParameter("ten");
        double price  = Double.parseDouble(req.getParameter("price"));
        String baohanh = req.getParameter("tgbh");
        String hangsx = req.getParameter("hang");
        String version = req.getParameter("version");
        int number = Integer.parseInt(req.getParameter("number"));
        String type = req.getParameter("type");
        String hangdung = req.getParameter("time");
        String mota = req.getParameter("text");
        String statusID = StatusDao.getID(req.getParameter("select"));
        String category = DirectorysDao.getID(req.getParameter("select2"));

        String url = req.getParameter("url");

        ProductsDao.insertProductNew(id, category, ten, type, mota,price, version, hangsx, url, hangdung, baohanh, number, statusID);
        KhoDao.insertKho(id, number);
        req.getRequestDispatcher("/admin/addproduct.jsp").forward(req,resp);


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
