package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.Query;
import org.jdbi.v3.core.statement.Update;
import vn.edu.hcmuaf.db.JDBIConnector;
import vn.edu.hcmuaf.model.OderDetail;

import java.util.ArrayList;
import java.util.List;

public class OderDetailDao {

    public static List<OderDetail> getOder(String id){
        List<OderDetail> oderDetails = new ArrayList<>();
        try (Handle handle = JDBIConnector.me().open()){
            String query ="SELECT madh, masp, soluong, tonggia FROM chitietdonhang WHERE madh=?";
            Query Ojb = handle.createQuery(query).bind(0, id);
            oderDetails = Ojb.map((rs,ctx)->
                    new OderDetail(
                            rs.getString("madh"),
                            rs.getString("masp"),
                            rs.getInt("soluong"),
                            rs.getLong("tonggia")
                    )
                    ).list();
        }catch (Exception e){
            return List.of();
        }
        return  oderDetails;
    }
    public static void insert(String id, String masp, int number, long total ){
        try (Handle handle=JDBIConnector.me().open()){
            String query = "INSERT INTO chitietdonhang(madh, masp, soluong, tonggia) VALUES (?, ?, ?, ?)";
            Update update = handle.createUpdate(query)
                    .bind(0, id)
                    .bind(1, masp)
                    .bind(2, number)
                    .bind(3, total);
            update.execute();
        }catch (Exception e){

        }
    }
}
