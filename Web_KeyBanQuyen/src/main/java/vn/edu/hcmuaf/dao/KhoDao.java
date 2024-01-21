package vn.edu.hcmuaf.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.statement.Update;
import vn.edu.hcmuaf.db.JDBIConnector;

public class KhoDao {
        public static void insertKho(String id, int number){
            try (Handle handle = JDBIConnector.me().open()){
                String query = "INSERT INTO kho(masp, soluong, ngaycapnhat) VALUES (?, ?, NOW())";

                Update update = handle.createUpdate(query)
                        .bind(0, id)
                        .bind(1, number);
                update.execute();
            }
        }

        public static int getNumberProduct(String id){
            int result=0;
            try (Handle handle=JDBIConnector.me().open()){
                String query = "SELECT soluong FROM kho WHERE masp=?";
                result = handle.createQuery(query)
                        .bind(0,id)
                        .mapTo(Integer.class)
                        .one();
            }
            return result;
        }
}
