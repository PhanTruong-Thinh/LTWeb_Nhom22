package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Query;
import org.jdbi.v3.core.statement.Update;
import vn.edu.hcmuaf.db.JDBIConnector;
import vn.edu.hcmuaf.model.Image;

import java.util.ArrayList;
import java.util.List;

public class ImageDao {
    public static List<Image> getImageProductByID(String id){
        List<Image> images = new ArrayList<>();
        try(Handle handle = JDBIConnector.me().open()) {
            String query = "SELECT masp, url FROM hinhanh WHERE masp=?";
            Query queryOjb = handle.createQuery(query)
                    .bind(0, id);
            images = queryOjb.map((rs, ctx)->
                    new Image(
                            rs.getString("masp"),
                            rs.getString("url")
                    )).list();
        }catch (Exception e){
            return List.of();
        }
        return images;
    }
    public static void inserImageProduct(String id, String url){
        try (Handle handle = JDBIConnector.me().open()){
            String query ="INSERT INTO hinhanh(masp, url) VALUES (?,?)";
            Update update = handle.createUpdate(query)
                    .bind(0,id)
                    .bind(1, url);
           update.execute();
        }
    }
}
