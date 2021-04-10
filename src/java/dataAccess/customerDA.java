
package dataAccess;

import domain.Customer;
import domain.IceCream;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Koh Hui Hui
 */
public class customerDA {
    private String host = "jdbc:derby://localhost:1527/icecreamdb";
    private String user = "nbuser";
    private String password = "nbuser";
    private String tableName = "customer";
    private String selectAllQuery = "SELECT * FROM " + tableName;
    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;

    public customerDA() {
        createConnection();
    }
    
    public void addCustomer(Customer cust) throws SQLException{
        createConnection();
        String insertStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            stmt = conn.prepareStatement(insertStr);
            stmt.setString(1, cust.getCustId());
            stmt.setString(2, cust.getFirstname());
            stmt.setString(3, cust.getLastname());
            stmt.setString(4, cust.getAddress());
            stmt.setString(5, cust.getCity());
            stmt.setString(6, cust.getState());
            stmt.setInt(7, cust.getPostcode());
            stmt.setString(8, cust.getEmail());
            stmt.setString(9, cust.getPhone());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        }finally{
            shutDown();
        }
    }
    
    private void createConnection() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection(host, user, password);
        } catch (Exception ex) {
            ex.getMessage();
        }
    }
    
    public static void main(String[] args) {
        ArrayList<IceCream> icecreamList = new ArrayList<IceCream>();
        icecreamDA icda = new icecreamDA();
        icecreamList = icda.selectAllIceCream();
        System.out.println(icecreamList);
    }
    
    private void shutDown() throws SQLException {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                throw ex;
            }
        }
    }
}
