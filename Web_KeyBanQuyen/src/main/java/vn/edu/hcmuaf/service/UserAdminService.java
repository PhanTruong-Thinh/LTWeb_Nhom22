package vn.edu.hcmuaf.service;


import vn.edu.hcmuaf.dao.UserDao;
import vn.edu.hcmuaf.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class UserAdminService {
    private static UserAdminService instance;

    public static UserAdminService getInstance(){
        if (instance==null) instance = new UserAdminService();
        return instance;
    }

//    public UserAdmin checkLogin(String email, String pass){
////        UserAdmin userAdminbyemail = UserDao.getUserEmail(email);
//        if (userAdminbyemail !=null && userAdminbyemail.getEmail().equals(email) && userAdminbyemail.getPassword().equals(pass))
//                return userAdminbyemail;
//        return null;
//    }
//
//    public static void main(String[] args) {
//        List<UserAdmin> userAdmins = JDBIConnector.me().withHandle(handle ->
//                handle.createQuery("select * from useradmin").mapToBean(UserAdmin.class).collect(Collectors.toList()));
//
//        UserAdmin u = UserAdminService.getInstance().checkLogin("thinh@gmail.com", "123");
//        System.out.println(u);
//    }
}
