package vn.edu.hcmuaf.dao;

import vn.edu.hcmuaf.bean.UserAdmin;
import vn.edu.hcmuaf.db.JDBIConnector;

import java.util.Optional;

public class AdminDao {

    public static UserAdmin getUserEmail(String email){
        Optional<UserAdmin> userAdmin = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from useradmin where email=?")
                        .bind(0,email)
                        .mapToBean(UserAdmin.class).stream().findFirst()
        );
        return userAdmin.isEmpty() ? null : userAdmin.get();
    }
}
