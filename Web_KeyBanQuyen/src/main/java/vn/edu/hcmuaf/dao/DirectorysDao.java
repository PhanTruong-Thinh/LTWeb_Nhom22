package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Query;
import org.jdbi.v3.core.statement.Update;
import vn.edu.hcmuaf.db.JDBIConnector;
import vn.edu.hcmuaf.model.Directorys;
import vn.edu.hcmuaf.model.Products;

import java.util.ArrayList;
import java.util.List;

public class DirectorysDao {

    public static List<Directorys> getDirectorysAdmin() {
        List<Directorys> productsList= new ArrayList<Directorys>();
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT danhmuc.madanhmuc, danhmuc.tendanhmuc, statu.name FROM danhmuc JOIN statu ON danhmuc.trangthai=statu.id GROUP BY danhmuc.madanhmuc, danhmuc.tendanhmuc, statu.name";

            Query queryObj = handle.createQuery(query);
            productsList = queryObj.map((rs, ctx) ->
                    new Directorys(
                            rs.getString("madanhmuc"),
                            rs.getString("tendanhmuc"),
                            rs.getString("name")
                    )
            ).list();
        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return List.of();
        }
        return productsList;
    }


    public static String getName(String id) {
        String name ="";
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT tendanhmuc FROM danhmuc WHERE madanhmuc=?";

            name = handle.createQuery(query).bind(0, id)
                    .mapTo(String.class)
                    .one();
        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return "";
        }
        return name;
    }

    public static String getID(String name) {
        String result ="";
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT madanhmuc FROM danhmuc WHERE tendanhmuc=?";

            result = handle.createQuery(query).bind(0, name)
                    .mapTo(String.class)
                    .one();
        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return "";
        }
        return result;
    }

    public static void insertCategoryNew(String id, String ten, String status){
        try (Handle handle = JDBIConnector.me().open()){
            String query ="INSERT INTO danhmuc(madanhmuc, tendanhmuc, trangthai) VALUES (?, ?, ?)";
            Update update = handle.createUpdate(query)
                    .bind(0, id)
                    .bind(1, ten)
                    .bind(2, status);
            update.execute();
        }
    }

    public static void removeCategory(String id){
        try (Handle handle = JDBIConnector.me().open()){
            String query = "DELETE FROM danhmuc WHERE madanhmuc=?";
            Update update = handle.createUpdate(query)
                    .bind(0, id);
            update.execute();
        }
    }
}
