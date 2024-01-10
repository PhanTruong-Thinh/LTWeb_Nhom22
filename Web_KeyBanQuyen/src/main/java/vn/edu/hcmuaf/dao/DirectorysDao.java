package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Query;
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
}
