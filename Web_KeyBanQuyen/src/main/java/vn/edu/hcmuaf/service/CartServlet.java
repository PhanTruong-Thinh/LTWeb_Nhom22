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

@WebServlet(name = "CartServlet", value = "/CartServlet")
public class CartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        Cart cart = (Cart) session.getAttribute("cart");
        String id = req.getParameter("ma");

        int number = Integer.parseInt(req.getParameter("quan"));
        int quantil = KhoDao.getNumberProduct(id);
        String command = req.getParameter("command");
        if (number <= quantil){
        try {

                switch (command){

                    case "insert":
                        if (cart == null) {
                            cart = new Cart();
                        }
                        if (number !=0){
                            cart.inserCart(id, number);
                            KhoDao.updateQuantilyProduct(id, number, true);
                            session.setAttribute("cart", cart);
                        }
                        break;
                }

        }catch (Exception e){

        }
        }
        req.getRequestDispatcher("./single-product.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}