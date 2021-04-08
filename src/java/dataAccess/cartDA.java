/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import domain.Cart;
import domain.IceCream;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author USER
 */
public class cartDA {

    private String host = "jdbc:derby://localhost:1527/icecreamdb";
    private String user = "nbuser";
    private String password = "nbuser";
    private String tableName = "cart";
    private String selectAllQuery = "SELECT * FROM " + tableName;
    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;

    public cartDA() {
        createConnection();
    }

    public ArrayList<Cart> selectAllCart() {
        Cart cart = new Cart();
        ArrayList<Cart> cartList = new ArrayList<Cart>();

        try {
            stmt = conn.prepareStatement(selectAllQuery);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                cart = new Cart(rs.getString("ID"), rs.getString("Name"), rs.getDouble("Price"), rs.getString("Image"), rs.getInt("Quantity"));
                cartList.add(cart);
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return cartList;
    }

    public boolean checkCart(String id) {
        String query = "SELECT * FROM " + tableName + " WHERE ID=?";
        boolean check = false;
        try {
            stmt = conn.prepareStatement(query);
            stmt.setString(1, id);
            rs = stmt.executeQuery();

            if (rs.next()) {
                check = true;
            }

        } catch (Exception ex) {
            ex.getMessage();
        }

        return check;
    }

    public int checkValue(String id) {
        String query = "SELECT * FROM " + tableName + " WHERE ID=?";
        int value = 0;
        try {
            stmt = conn.prepareStatement(query);
            stmt.setString(1, id);
            rs = stmt.executeQuery();

            if (rs.next()) {
                value = rs.getInt("Quantity");
            }

        } catch (Exception ex) {
            ex.getMessage();
        }

        return value;
    }

    public void updateCart(String id, int value) {
        String query = "UPDATE " + tableName + " SET Quantity=? WHERE ID=?";
        try {
            stmt = conn.prepareStatement(query);
            stmt.setInt(1, value);
            stmt.setString(2, id);
            stmt.executeUpdate();

        } catch (Exception ex) {
            ex.getMessage();
        }
    }

    public boolean addIceCream(IceCream ic) {
        String insertStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?, ?, ?)";
        boolean check = false;
        try {
            stmt = conn.prepareStatement(insertStr);
            stmt.setString(1, ic.getIcecreamID());
            stmt.setString(2, ic.getIceCreamName());
            stmt.setDouble(3, ic.getIceCreamPrice());
            stmt.setString(4, ic.getIceCreamImage());
            stmt.setInt(5, 1);

            stmt.executeUpdate();
            check = true;
        } catch (SQLException ex) {
            check = false;
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        }
        return check;
    }

    public void deleteCart(String id) {
        String removeStr = "DELETE FROM Cart WHERE ID=?";
        try {
            stmt = conn.prepareStatement(removeStr);
            stmt.setString(1, id);

            stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
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
        cartDA da = new cartDA();
        da.updateCart("005", 2);
        //System.out.println(da.checkValue("005"));

    }

}
