package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.dao.OdersDao;
import vn.edu.hcmuaf.dao.UserDao;
import vn.edu.hcmuaf.model.Oders;
import vn.edu.hcmuaf.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String name = req.getParameter("username");
            String email = req.getParameter("email");
            String phone= req.getParameter("phone");
            String pass = req.getParameter("pass");
            String com = req.getParameter("pass1");
        List<User> userList = UserDao.getUser();
        String id = Oders.generateRandomNumbers();
        for (User i: userList){
            if (id.equals(i.getMaNv())){
                id =  Oders.generateRandomNumbers();
            }
        }
        boolean b = false;
        String err = "";
        for (User u: userList){
            if (name.equals(u.getUsername())){
                b = true;
              err = "Tên đăng nhập đã tồn tại!";
              break;
            }else if (email.equals(u.getEmail())){
                b = true;
                err = "Email đã tồn tại!";
                break;
            }
        }
        if (pass != null && com != null & pass.equals(com)){
            if (b){
                req.setAttribute("err",err);
                req.getRequestDispatcher("/sign_up.jsp").forward(req,resp);
            }else {
                UserDao.insertUser(id, name, " ",phone,email,pass );
                req.getRequestDispatcher("notification.html").forward(req,resp);
            }
        }else {
            req.setAttribute("err","Mật khẩu không trùng khớp");
            req.getRequestDispatcher("/sign_up.jsp").forward(req,resp);
        }


    }
}
