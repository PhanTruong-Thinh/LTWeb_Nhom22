package vn.edu.hcmuaf.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

public class JDBIConnector {
    private static Jdbi jdbi;
    private static void connect(){
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://"+DBProperties.host+":"+DBProperties.port+"/"+DBProperties.dbname);
        dataSource.setUser(DBProperties.userName);
        dataSource.setPassword(DBProperties.pass);

        try {
            dataSource.setAutoReconnect(true);
            dataSource.setUseCompression(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        jdbi = Jdbi.create(dataSource);
    }
    private JDBIConnector(){}

    public static Jdbi me(){
        if (jdbi==null) connect();
        return jdbi;
    }
}
