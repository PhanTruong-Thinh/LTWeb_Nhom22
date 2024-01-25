package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.OderDetailDao;
import vn.edu.hcmuaf.dao.OdersDao;
import vn.edu.hcmuaf.dao.ProductsDao;
import vn.edu.hcmuaf.model.Cart;
import vn.edu.hcmuaf.model.OderDetail;
import vn.edu.hcmuaf.model.Oders;
import vn.edu.hcmuaf.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

@WebServlet(name = "Oder", value = "/Oder")
public class OderService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = Oders.generateRandomNumbers();
            List<String> madh = OdersDao.getID();
            for (String i:madh){
                if (id.equals(i)){
                    id =  Oders.generateRandomNumbers();
                }
            }
            HttpSession session = req.getSession();
            User user = (User) session.getAttribute("auth");
            Cart cart = (Cart) session.getAttribute("cart");
            TreeMap<String, Integer> list = cart.getList();
            long total=0;
            Set<String> setkey = list.keySet();
            for (String k:setkey){
                long p = ProductsDao.getPriceProduct(k) * list.get(k);
                total += p;
                OderDetailDao.insert(id, k, list.get(k), p);
            }

            String name = req.getParameter("billing_first_name");
            String address = req.getParameter("billing_address");

            OdersDao.insertOders(id, user.getMaNv(), total, user.getName(), user.getPhone(), address, "DH04", "TH02");


            req.getRequestDispatcher("/infeo.jsp").forward(req,resp);
        }catch (Exception e){

        }


    }
}
