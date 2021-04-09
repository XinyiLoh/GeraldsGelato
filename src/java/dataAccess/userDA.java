/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import domain.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Loh Xin Yi
 */
public class userDA {

    private final static String host = "jdbc:derby://localhost:1527/icecreamdb";
    private final static String user = "nbuser";
    private final static String password = "nbuser";
    private final static String tableName = "users";

    private static Connection conn;
    private static PreparedStatement stmt;

    public userDA() {
        createConnection();
    }

    public static void addRecord(User user) throws SQLException {
        createConnection();
        String insertStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?, ?)";
        try {
            stmt = conn.prepareStatement(insertStr);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getRole());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        } finally {
            shutDown();
        }
    }

    public static User getRecordByUsername(String username) {
        createConnection();
        String queryStr = "SELECT * FROM " + tableName + " WHERE username = ?";
        User user = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new User(username, rs.getString("Email"), rs.getString("Password"), rs.getString("Role"));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return user;
    }

    public static User getRecordByEmail(String email) {
        createConnection();
        String queryStr = "SELECT * FROM " + tableName;
        User user = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                if (rs.getString("Email").equals(email)) {
                    user = new User(rs.getString("Username"), email, rs.getString("Password"), rs.getString("Role"));
                }
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return user;
    }

    public static User getRecordByEmailAndPassword(String email, String password) {
        createConnection();
        String queryStr = "SELECT * FROM " + tableName;
        User user = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                if (rs.getString("Email").equals(email) && rs.getString("Password").equals(password)) {
                    user = new User(rs.getString("Username"), email, password, rs.getString("Role"));
                }
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return user;
    }

    public ArrayList<User> displayAllUser() {
        User user = new User();
        ArrayList<User> userList = new ArrayList<>();
        String displayQuery = "SELECT * from " + tableName;

        try {
            stmt = conn.prepareStatement(displayQuery);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userList.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return userList;
    }

    public void updateRecord(User user) {
        createConnection();
        try {
            String updateStr = "UPDATE " + tableName + " SET email = ?, password = ?, role = ? " + " WHERE username = ?";
            stmt = conn.prepareStatement(updateStr);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.setString(4, user.getUsername());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        } finally {
            shutDown();
        }
    }

    public void deleteRecord(String username) {
        createConnection();
        try {
            String deleteStr = "DELETE FROM " + tableName + " WHERE username = ?";
            stmt = conn.prepareStatement(deleteStr);
            stmt.setString(1, username);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        } finally {
            shutDown();
        }
    }

    private static void createConnection() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection(host, user, password);
            System.out.println("***TRACE: Connection established.");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        }
    }

    private static void shutDown() {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
            }
        }
    }
}
