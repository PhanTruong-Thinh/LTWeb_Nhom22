package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String name = req.getParameter("username");
            String pass = req.getParameter("pass");
            User user = UserAdminService.getInstance().checkLogin(name, pass);
            if (user!=null){
                if (user.getLevel()==2){
                    HttpSession session = req.getSession();
                    session.setAttribute("auth", user);
                    resp.sendRedirect("index.jsp");
                }else {
                    HttpSession session = req.getSession();
                    session.setAttribute("auth", user);
                    resp.sendRedirect("admin/index.jsp");
                }


            }else {
                req.setAttribute("err", "Bạn nhập sai tên đăng nhập hoặc mật khẩu!");
                req.getRequestDispatcher("Login.jsp").forward(req,resp);
            }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
