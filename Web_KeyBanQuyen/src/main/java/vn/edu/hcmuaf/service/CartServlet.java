package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.KhoDao;
import vn.edu.hcmuaf.dao.ProductsDao;
import vn.edu.hcmuaf.model.Cart;
import vn.edu.hcmuaf.model.Products;
import vn.edu.hcmuaf.model.User;

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
        User user = (User) session.getAttribute("auth");
        if (user==null){
            req.getRequestDispatcher("/Login.jsp").forward(req,resp);
        }else {
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
            Products products = (Products) session.getAttribute("de");
            products = ProductsDao.getProduct(id);
            session.setAttribute("de", products);
            req.getRequestDispatcher("./single-product.jsp").forward(req,resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
