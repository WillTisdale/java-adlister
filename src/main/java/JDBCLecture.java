import com.mysql.cj.jdbc.Driver;

import java.sql.*;


public class JDBCLecture {
    public static void main(String[] args) {
        try{
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                "root",
                "codeup"
            );

            Statement statement = connection.createStatement();

            String query = "SELECT * FROM albums";

            ResultSet rs = statement.executeQuery(query);

            // calling .next() once, iterates over the result set one time.
//            rs.next();
//            rs.isBeforeFirst();

//            System.out.println(rs.getString(1));
//            System.out.println(rs.getString(2));
//            System.out.println(rs.getString(3));
//            System.out.println(rs.getString(4));
//            System.out.println(rs.getString(5));
//            System.out.println(rs.getString(6));
            System.out.println("---------------------------------------------------------------------------------------------------------------------------------------------");
            System.out.println(" id |        artist                    |                              name                     | release_date | sales | genre");
            System.out.println("---------------------------------------------------------------------------------------------------------------------------------------------");
            while (rs.next()){
                System.out.printf("%-4s|%-34s|%-55s|%-14s|%-7s|%s%n", rs.getString(1), rs.getString(2),
                        rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
                System.out.println("-----------------------------------------------------------------------------------------------------------------------------------------");
            }

            ResultSetMetaData rsmd = rs.getMetaData();
            int colCount = rsmd.getColumnCount();

        } catch (SQLException e){
            e.printStackTrace();
        }
    }
}
