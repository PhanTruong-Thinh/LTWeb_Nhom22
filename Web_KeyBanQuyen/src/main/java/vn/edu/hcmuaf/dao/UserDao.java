package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Query;

import vn.edu.hcmuaf.db.JDBIConnector;
import vn.edu.hcmuaf.model.Products;
import vn.edu.hcmuaf.model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UserDao {

    public static List<User> getUserByLevel(int level) {
        List<User> usersList= new ArrayList<User>();
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT maND, name, address, email, phone, username, password,date FROM customers WHERE level=?";

            Query queryObj = handle.createQuery(query)
                    .bind(0, level);
            usersList = queryObj.map((rs, ctx) ->
                    new User(
                            rs.getString("maND"),
                            rs.getString("name"),
                            rs.getString("address"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getTimestamp("date")
                    )
            ).list();


        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return List.of();
        }
        return usersList;
    }

    public static List<User> getUserByLevelAdmin() {
        List<User> usersList= new ArrayList<User>();
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT maND, name, address, email, phone, username, password,date FROM customers WHERE level!=2";

            Query queryObj = handle.createQuery(query);
            usersList = queryObj.map((rs, ctx) ->
                    new User(
                            rs.getString("maND"),
                            rs.getString("name"),
                            rs.getString("address"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getTimestamp("date")
                    )
            ).list();


        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return List.of();
        }
        return usersList;
    }

    public static void main(String[] args) {
        List<User> userList = getUserByLevel(2);
        for (User u : userList) {
            System.out.println(u.toString());
        }
    }
}