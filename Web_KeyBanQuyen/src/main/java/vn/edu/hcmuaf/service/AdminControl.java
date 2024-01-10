package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.bean.UserAdmin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name ="AdminControl", value = "/admin/log")
public class AdminControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String e = req.getParameter("email");
//        String pass = req.getParameter("password");
//
//        resp.getWriter().println("email: "+e);
//        resp.getWriter().println("pass: "+pass);


//        UserAdmin userAdmin = UserAdminService.getInstance().checkLogin(e, pass);
//        if (userAdmin != null){
//            HttpSession session = req.getSession();
//            session.setAttribute("authAdmin", userAdmin);
//            resp.sendRedirect("index.jsp");
//        }else {
//            req.setAttribute("error", "Bạn đã nhập sai Email hoặc Mật khẩu");
//            req.getRequestDispatcher("log.jsp").forward(req,resp);
//        }
    }

    public static void main(String[] args) {

    }
}
