import java.sql.*;

public class InsertEmployee {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mytask"; 
        String user = "root"; 
        String password = "Root@1519"; 

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, password);

            String sql = "INSERT INTO Employee (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            // Data from given table
            Object[][] data = {
                {101, "Jenny", 25, 10000},
                {102, "Jacky", 30, 20000},
                {103, "Joe", 20, 40000},
                {104, "John", 40, 80000},
                {105, "Shameer", 25, 90000}
            };

            for (Object[] row : data) {
                ps.setInt(1, (int) row[0]);
                ps.setString(2, (String) row[1]);
                ps.setInt(3, (int) row[2]);
                ps.setInt(4, (int) row[3]);
                ps.executeUpdate();
            }

            System.out.println("Data inserted successfully!");
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
