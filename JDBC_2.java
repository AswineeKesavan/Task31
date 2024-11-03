package Task31;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBC_2{
	private static final String URL = "jdbc:mysql://localhost:3306/test";
	private static final String USER = "root";
	private static final String PASSWORD = "Test@1234";

    public static void main(String[] args) {
        Connection connection = null;

        try {
            // Establish the connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connection established successfully!");

            // Insert employee data
            insertEmployee(connection, 101, "Jenny", 25, 10000);
            insertEmployee(connection, 102, "Jacky", 30, 20000);
            insertEmployee(connection, 103, "Joe", 20, 40000);
            insertEmployee(connection, 104, "John", 40, 80000);
            insertEmployee(connection, 105, "Shameer", 25, 90000);

            System.out.println("Employee data inserted successfully!");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Clean up resources
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private static void insertEmployee(Connection connection, int empCode, String empName, int empAge, double empSalary) throws SQLException {
        String insertSQL = "INSERT INTO Employees (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(insertSQL)) {
            pstmt.setInt(1, empCode);
            pstmt.setString(2, empName);
            pstmt.setInt(3, empAge);
            pstmt.setDouble(4, empSalary);
            pstmt.executeUpdate();
        }
    }
}


