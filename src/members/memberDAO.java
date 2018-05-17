package members;

import java.sql.*;

public class memberDAO {

        private Connection conn;
        private PreparedStatement pstmt;
        private ResultSet rs;

        public memberDAO(){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                String dbURL = "jdbc:mysql://localhost:3306/defenders";
                String dbID = "defenders";
                String dbPass = "defenderss";
                conn = DriverManager.getConnection(dbURL, dbID, dbPass);
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }

//    private static Connection conn;
//    {
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            getConnection();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public static Connection getConnection() {
//        try {
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/defenders", "defenders", "defenderss");
//            return conn;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return null;
//
//    }

    public boolean join(String memberID, String memberPassword, String memberEmail){
        String sql = "insert into member (memberID, memberPassword, memberEmail) values(?, ?, ?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberID);
            pstmt.setString(2, memberPassword);
            pstmt.setString(3, memberEmail);
            pstmt.executeQuery();
            pstmt.close();
            return true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }



}
