package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.KhoDao;
import vn.edu.hcmuaf.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CartRemove", value = "/CartRemove")
public class CartRemove extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        String id = req.getParameter("masp");
        String comand = req.getParameter("com");

        try {
            switch (comand){
                case "X":
                    KhoDao.updateQuantilyProduct(id, cart.getList().get(id), false);
                    cart.removeProduct(id);
                    session.setAttribute("cart",cart);
                break;
                case "Cập nhật":
                    String[] ma = req.getParameterValues("id[]");
                    String[] number = req.getParameterValues("so[]");

                    if (id != null && number.length > 0){
                        for (int i=0; i < ma.length ; i++){
                            int n = Integer.parseInt(number[i]);
                            cart.update(ma[i], n);
                            session.setAttribute("cart",cart);
                        }
                    }
            }

        }catch (Exception e){

        }
        req.getRequestDispatcher("/cart.jsp").forward(req,resp);

    }
}
