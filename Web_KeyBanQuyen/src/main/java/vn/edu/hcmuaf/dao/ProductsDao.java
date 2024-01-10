package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Query;
import vn.edu.hcmuaf.bean.UserAdmin;
import vn.edu.hcmuaf.db.JDBIConnector;
import vn.edu.hcmuaf.model.Products;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

public class ProductsDao {

    public static List<Products> getProductAdmin() {
        List<Products> productsList= new ArrayList<Products>();
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT sanpham.tensp, sanpham.hinhanh, sanpham.giaban, kho.soluong, kho.trangthai, statu.`name` FROM sanpham JOIN statu JOIN kho ON sanpham.trangthai = statu.id ";

            Query queryObj = handle.createQuery(query);
            productsList = queryObj.map((rs, ctx) ->
                    new Products(
                            rs.getString("hinhanh"),
                            rs.getString("tenSP"),
                            rs.getString("name"),
                            rs.getInt("soluong"),
                            rs.getString("trangthai"),
                            rs.getDouble("giaban")
                    )
                    ).list();


        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return List.of();
        }
        return productsList;
    }

    public static int numberProductByDirectory(String id) {
        int number =0;
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT COUNT(masp) FROM sanpham WHERE danhmuc=?";

            number = handle.createQuery(query).bind(0, id)
                    .mapTo(Integer.class)
                    .one();
        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, trả về một danh sách trống
            return 0;
        }
        return number;
    }


    public static void main(String[] args) {
        List<Products> list = getProductAdmin();
        for (Products i: list) {
            System.out.println(i.toString());
        }
    }
}
