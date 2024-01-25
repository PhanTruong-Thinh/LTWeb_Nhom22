package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CartUpdate", value = "/CartUpdate")
public class CartUpdate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        String table = req.getParameter("table");
        try {
            if (table != null){
                String[] id = req.getParameterValues("id[]");
                String[] number = req.getParameterValues("so[]");

                if (id != null && number.length > 0){
                    for (int i=0; i < id.length ; i++){
                        int n = Integer.parseInt(number[i]);
                        cart.update(id[i], n);
                    }
                    req.getRequestDispatcher("./cart.jsp").forward(req,resp);
                }
            }
        }catch (Exception e){

        }
        req.getRequestDispatcher("./cart.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
