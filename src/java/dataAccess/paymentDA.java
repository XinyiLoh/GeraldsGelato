/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import domain.Payment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author NEC
 */
public class paymentDA {

    private final static String host = "jdbc:derby://localhost:1527/icecreamdb";
    private final static String user = "nbuser";
    private final static String password = "nbuser";
    private final static String tableName = "PAYMENT";

    private static Connection conn;
    private static PreparedStatement stmt;

    public paymentDA() {
        createConnection();
    }

   public Payment getPaymentId(String paymentId) {
        String queryStr = "SELECT * FROM " + tableName + " WHERE ID = ?";
        Payment payment = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, paymentId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                payment = new Payment(paymentId, rs.getDouble("PaymentAmount"), rs.getString("PaymentDate"), rs.getString("PaymentMode"), rs.getString("orderStatus"), rs.getString("cartId"), rs.getString("custId"));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return payment;
    }

    public void addRecord(Payment payment) throws SQLException {
        createConnection();
        try {
            
            String sqlInsertStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sqlInsertStr);
            stmt.setString(1, payment.getPaymentId());
            stmt.setDouble(2, payment.getPaymentAmount());
            stmt.setString(3, payment.getPaymentDate());
            stmt.setString(4, payment.getPaymentMode());
            stmt.setString(5, payment.getOrderStatus());
            stmt.setString(6, payment.getCartId());
            stmt.setString(7, payment.getCustId());

            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            throw ex;
        } finally {
            shutDown();
        }
    }

    public ArrayList<Payment> selectAllPayment() {
        Payment payment = new Payment();
        ArrayList<Payment> paymentList = new ArrayList<Payment>();
        String sqlQueryStr = "SELECT * from " + tableName;

        try {
            stmt = conn.prepareStatement(sqlQueryStr);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                paymentList.add(new Payment(rs.getString(1), rs.getDouble(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return paymentList;
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
        ArrayList<Payment> paymentList = new ArrayList<Payment>();
        paymentDA icda = new paymentDA();
        paymentList = icda.selectAllPayment();
        System.out.println(paymentList);

    }
}
