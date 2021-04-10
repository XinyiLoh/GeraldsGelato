package dataAccess;

import domain.Customer;
import domain.IceCream;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Koh Hui Hui
 */
public class customerDA {

    private static String host = "jdbc:derby://localhost:1527/icecreamdb";
    private static String user = "nbuser";
    private static String password = "nbuser";
    private static String tableName = "customer";
    private String selectAllQuery = "SELECT * FROM " + tableName;
    private static Connection conn;
    private static PreparedStatement stmt;
    private ResultSet rs;

    public customerDA() {
        createConnection();
    }

    public void addCustomer(Customer cust) throws SQLException {
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
        } finally {
            shutDown();
        }
    }

    public static Customer getCustomerId(String customerId) {

        String queryStr = "SELECT * FROM " + tableName + " WHERE Cust_ID = ?";
        Customer customer = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, customerId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                customer = new Customer(customerId, rs.getString("firstname"), rs.getString("lastname"),
                        rs.getString("address"), rs.getString("city"), rs.getString("state"),
                        rs.getInt("postcode"), rs.getString("email"), rs.getString("phone"));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return customer;
    }

    private void createConnection() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection(host, user, password);
        } catch (Exception ex) {
            ex.getMessage();
        }
    }

    public ArrayList<Customer> selectAllCustomer() {
        Customer customer = new Customer();
        ArrayList<Customer> customerList = new ArrayList<Customer>();
        String sqlQueryStr = "SELECT * from " + tableName;

        try {
            stmt = conn.prepareStatement(sqlQueryStr);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                customerList.add(new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9)));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return customerList;
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
