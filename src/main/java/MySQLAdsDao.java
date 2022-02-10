import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;
    private List<Ad> ads;



    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public List<Ad> all() {
        //bucket to capture results
        List<Ad> allAds = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            String query = "SELECT * FROM ads";

            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()){
                Ad newAd = new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                );
                allAds.add(newAd);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return allAds;
    };

    public Long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            String insertQuery = "INSERT INTO ads(user_id, title, description) Values " +
                    "(" + ad.getUserId() + "," +
                    "'" + ad.getTitle() + "'," + "''" + ad.getDescription()+ "')";

            stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("error creating a new ad");
        }

    }
}
