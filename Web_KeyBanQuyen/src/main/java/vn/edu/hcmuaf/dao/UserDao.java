package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Query;

import org.jdbi.v3.core.statement.Update;
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
            String query ="SELECT makh, `name`, address, email, phone, username, `password`, `level`, `create` FROM customers WHERE level=?";
            Query Ojb = handle.createQuery(query)
                    .bind(0, level);
            usersList = Ojb.map((rs,ctx)->
                    new User(
                            rs.getString("makh"),
                            rs.getString("name"),
                            rs.getString("address"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getInt("level"),
                            rs.getTimestamp("create")
                    )).list();


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
            String query ="SELECT makh, `name`, address, email, phone, username, `password`, `level`, `create` FROM customers WHERE level!=2";
            Query Ojb = handle.createQuery(query);
            usersList = Ojb.map((rs,ctx)->
                    new User(
                            rs.getString("makh"),
                            rs.getString("name"),
                            rs.getString("address"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getInt("level"),
                            rs.getTimestamp("create")
                    )).list();


        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return List.of();
        }
        return usersList;
    }
    public static List<User> getUser() {
        List<User> usersList= new ArrayList<User>();
        try (Handle handle = JDBIConnector.me().open()) {
            String query ="SELECT makh, `name`, address, email, phone, username, `password`, `level`, `create` FROM customers ";
            Query Ojb = handle.createQuery(query);
            usersList = Ojb.map((rs,ctx)->
                    new User(
                            rs.getString("makh"),
                            rs.getString("name"),
                            rs.getString("address"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getInt("level"),
                            rs.getTimestamp("create")
                    )).list();


        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return List.of();
        }
        return usersList;
    }
    public static String getName(String id){
        String result="";
        try (Handle handle = JDBIConnector.me().open()){
            String query ="SELECT `name` FROM customers WHERE makh=?";
            result = handle.createQuery(query)
                    .bind(0, id)
                    .mapTo(String.class)
                    .findOne()
                    .orElse(null);
        }
        return result;
    }

    public static User getUserName(String name){
        User user = new User();
        try (Handle handle = JDBIConnector.me().open()){
            String query ="SELECT makh, `name`, address, email, phone, username, `password`, `level`, `create` FROM customers WHERE username=?";
            Query Ojb = handle.createQuery(query)
                    .bind(0, name);
            user = Ojb.map((rs,ctx)->
                    new User(
                            rs.getString("makh"),
                            rs.getString("name"),
                            rs.getString("address"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getInt("level"),
                            rs.getTimestamp("create")
                    )).findOne().orElse(null);
        }catch (Exception e){

        }
        return user;
    }
    public static void insertUser(String id, String name, String address, String phone, String email, String pass){
        try (Handle handle=JDBIConnector.me().open()){
            String query ="INSERT INTO customers(makh, `name`, address, email, phone, username,`password`,`level`,`create`) VALUES (?,?,?,?,?,?,?,2,NOW())";
            Update update = handle.createUpdate(query)
                    .bind(0, id)
                    .bind(1, name)
                    .bind(2, address)
                    .bind(3, email)
                    .bind(4, phone)
                    .bind(5, name)
                    .bind(6, pass);
            update.execute();
        }

    }

    public static void main(String[] args) {
        List<User> userList = getUserByLevel(2);
        for (User u : userList) {
            System.out.println(u.toString());
        }
    }
}
