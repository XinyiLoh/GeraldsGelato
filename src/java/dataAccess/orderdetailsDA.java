/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import domain.OrderDetails;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Koh Hui Hui
 */
public class orderdetailsDA {

    private final static String host = "jdbc:derby://localhost:1527/icecreamdb";
    private final static String user = "nbuser";
    private final static String password = "nbuser";
    private final static String tableName = "ORDERDETAILS";

    private static Connection conn;
    private static PreparedStatement stmt;

    public orderdetailsDA() {
        createConnection();
    }

    public void addRecord(OrderDetails orderDetails) throws SQLException {
        createConnection();
        try {

            String sqlInsertStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sqlInsertStr);
            stmt.setString(1, orderDetails.getId());
            stmt.setInt(2, orderDetails.getQuantity());
            stmt.setString(3, orderDetails.getPayId());
            stmt.setString(4, orderDetails.getProdId());

            stmt.executeUpdate();

        } catch (SQLException ex) {
            throw ex;
        } finally {
            shutDown();
        }
    }

    public ArrayList<OrderDetails> selectAllOrderDetails() {
        OrderDetails orderDetails = new OrderDetails();
        ArrayList<OrderDetails> orderDetailsList = new ArrayList<OrderDetails>();
        String sqlQueryStr = "SELECT * from " + tableName;

        try {
            stmt = conn.prepareStatement(sqlQueryStr);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                orderDetailsList.add(new OrderDetails(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4)));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return orderDetailsList;
    }

    public ArrayList<OrderDetails> selectOrderDetailsByPaymentID(String paymentID) {
        OrderDetails orderDetails = new OrderDetails();
        ArrayList<OrderDetails> orderDetailsList = new ArrayList<OrderDetails>();
        String sqlQueryStr = "SELECT * from " + tableName + " WHERE PAYMENT_ID = ?";

        try {
            stmt = conn.prepareStatement(sqlQueryStr);
            stmt.setString(1, paymentID);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                orderDetailsList.add(new OrderDetails(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4)));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return orderDetailsList;
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

    private void createConnection() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection(host, user, password);
        } catch (Exception ex) {
            ex.getMessage();
        }
    }

    public static void main(String[] args) {
        ArrayList<OrderDetails> orderDetailsList = new ArrayList<OrderDetails>();
        orderdetailsDA orderProd = new orderdetailsDA();
        orderDetailsList = orderProd.selectAllOrderDetails();
        System.out.println(orderDetailsList);
    }
}
