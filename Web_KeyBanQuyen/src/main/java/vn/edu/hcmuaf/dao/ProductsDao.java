package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Query;

import org.jdbi.v3.core.statement.Update;
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

    /*
    lấy danh sách tất cả sản phẩm
     */
    public static List<Products> getProductAdmin() {
        List<Products> productsList= new ArrayList<Products>();
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT sanpham.masp,sanpham.tensp, sanpham.hinhanh, sanpham.giaban,  statu.`name` FROM sanpham JOIN statu  ON sanpham.trangthai = statu.id ";

            Query queryObj = handle.createQuery(query);
            productsList = queryObj.map((rs, ctx) ->
                    new Products(
                            rs.getString("hinhanh"),
                            rs.getString("masp"),
                            rs.getString("tenSP"),
                            rs.getString("name"),
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

    /*
    lấy sản phẩm theo danh mục
     */
    public static List<Products> getProductByDiretory(String diretory) {
        List<Products> productsList= new ArrayList<Products>();
        try (Handle handle = JDBIConnector.me().open()) {
            // Thực hiện truy vấn để lấy dữ liệu ID từ bảng staging
            String query = "SELECT sanpham.masp,sanpham.tensp, sanpham.hinhanh, sanpham.giaban, statu.`name` FROM sanpham JOIN statu ON sanpham.trangthai = statu.id WHERE sanpham.danhmuc=? GROUP BY sanpham.tensp, sanpham.hinhanh, sanpham.giaban, statu.`name`";

            Query queryObj = handle.createQuery(query).bind(0,diretory);
            productsList = queryObj.map((rs, ctx) ->
                    new Products(
                            rs.getString("hinhanh"),
                            rs.getString("masp"),
                            rs.getString("tenSP"),
                            rs.getString("name"),
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

    /*
    tổng số sản phẩm thuộc 1 danh mục
     */
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

    /*
    lấy thông tin 1 sản phẩm
     */
    public static Products getProduct(String id){
        Products product;
        try (Handle handle = JDBIConnector.me().open()){
            String query = "SELECT masp, danhmuc, tensp, loaisp, mota, giaban, phienban, hangsx, hinhanh, hangdung, baohanh, ngaydang, soluongthietbi, trangthai FROM sanpham WHERE masp = ?";
            Query queryObj = handle.createQuery(query)
                    .bind(0, id);

            product = (Products) queryObj.map((rs, ctx)->
                    new Products(
                            rs.getString("masp"),
                            rs.getString("danhmuc"),
                            rs.getString("tensp"),
                            rs.getString("loaisp"),
                            rs.getString("mota"),
                            rs.getDouble("giaban"),
                            rs.getString("phienban"),
                            rs.getString("hangsx"),
                            rs.getString("hinhanh"),
                            rs.getString("hangdung"),
                            rs.getString("baohanh"),
                            rs.getDate("ngaydang"),
                            rs.getInt("soluongthietbi"),
                            rs.getString("trangthai")
                    )).findOne().orElse(null);
        }

        return product;
    }

    public static void insertProductNew(String id, String danhmuc, String ten, String type, String mota, double price, String version, String hang, String url, String hangdung, String baohanh, int number, String status){

        try (Handle handle = JDBIConnector.me().open()){
            String query = "INSERT INTO sanpham(masp, danhmuc, tensp, loaisp, mota, giaban, phienban, hangsx, hinhanh, hangdung, baohanh, ngaydang, soluongthietbi, trangthai) VALUES (?,?,?,?,?,?,?,?,?,?,?,NOW(),?,?)";
            Update update = handle.createUpdate(query)
                    .bind(0, id)
                    .bind(1, danhmuc)
                    .bind(2, ten)
                    .bind(3, type)
                    .bind(4, mota)
                    .bind(5, price)
                    .bind(6, version)
                    .bind(7, hang)
                    .bind(8, url)
                    .bind(9, hangdung)
                    .bind(10, baohanh)
                    .bind(11, number)
                    .bind(12, status);
            update.execute();
        }
    }

    public static void updateProduct(String id, String danhmuc, String ten, String type, String mota, double price, String version, String hang, String hangdung, String baohanh, int number, String status){
        try (Handle handle=JDBIConnector.me().open()){
            String query="UPDATE sanpham SET  danhmuc=?, tensp=?, loaisp=?, mota=?, giaban=?, phienban=?, hangsx=?, hangdung=?, baohanh=?, soluongthietbi=?, trangthai=? WHERE masp=?";
            Update update = handle.createUpdate(query)
                    .bind(0, danhmuc)
                    .bind(1, ten)
                    .bind(2, type)
                    .bind(3, mota)
                    .bind(4, price)
                    .bind(5, version)
                    .bind(6, hang)
                    .bind(7, hangdung)
                    .bind(8, baohanh)
                    .bind(9, number)
                    .bind(10, status)
                    .bind(11, id);
            update.execute();
        }
    }

    public static void removeProduct(String id){
        try (Handle handle = JDBIConnector.me().open()){
            String query = "DELETE FROM sanpham WHERE masp=?";
            Update update = handle.createUpdate(query)
                    .bind(0,id);
            update.execute();

        }
    }
    public static void main(String[] args) {
        List<Products> list = getProductByDiretory("20237001");

            for (Products i: list){
                System.out.println(i.toString());
            }
        System.out.println(list.size());

    }
}
