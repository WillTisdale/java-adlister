import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{

    private Connection connection;

    public MySQLAdsDao(Config config) throws SQLException {
        this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    };

    @Override
    public List<Ad> all() {
        List<Ad> output = new ArrayList<>();
        String query = "SELECT * FROM ads";

        try{
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                output.add(
                        new Ad(
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description")
                        )
                );
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return output;
    }

    @Override
    public Long insert(Ad ad) {
        long rowsAffected = 0;
        String insertQuery = String.format("INSERT INTO ads (user_id, title, description) VALUES (%d, '%s', '%s')",
                ad.getUserId(), ad.getTitle(), ad.getDescription());
        try{
            Statement statement = connection.createStatement();
            rowsAffected = (long) statement.executeUpdate(insertQuery);
        } catch (SQLException e){
            e.printStackTrace();
        }
        return rowsAffected;
    }
}
