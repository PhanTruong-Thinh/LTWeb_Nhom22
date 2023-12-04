package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.bean.UserAdmin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name ="Admin", value = "/admin/Admin")
public class AdminControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("password");
        System.out.println("email: "+email+" : Pass: "+pass);


        UserAdmin userAdmin = UserAdminService.getInstance().checkLogin(email, pass);
        if (userAdmin!=null){
            HttpSession session = req.getSession();
            session.setAttribute("authAdmin", userAdmin);
            resp.sendRedirect("indexAdmin.jsp");
        }else {
            req.setAttribute("error", "Bạn đã nhập sai Email hoặc Mật khẩu");
            req.getRequestDispatcher("loginAdmin.jsp").forward(req,resp);
        }
    }
}
