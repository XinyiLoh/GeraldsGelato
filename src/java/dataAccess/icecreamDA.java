/**
 *
 * @author Siah Xin Ying
 */

package dataAccess;

import domain.IceCream;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class icecreamDA {

    private final static String host = "jdbc:derby://localhost:1527/icecreamdb";
    private final static String user = "nbuser";
    private final static String password = "nbuser";
    private final static String tableName = "icecream";

    private Connection conn;
    private PreparedStatement stmt;

    public icecreamDA() {
        createConnection();
    }

    public IceCream getIceCream(String iceCreamID) {
        String queryStr = "SELECT * FROM " + tableName + " WHERE ID = ?";
        IceCream iceCream = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, iceCreamID);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                iceCream = new IceCream(iceCreamID, rs.getString("Name"), rs.getDouble("Price"), rs.getString("Description"),
                        rs.getInt("Rating"), rs.getString("Image"), rs.getString("Type"), rs.getInt("Available"),
                        rs.getString("Descl"), rs.getString("Ingrediants"));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return iceCream;
    }

    public String getIceCreamName(String iceCreamName) {
        String queryStr = "SELECT * FROM " + tableName + " WHERE Name = ?";
        String id = "";
        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, iceCreamName);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                id = rs.getString("ID");
            } else {
                id = "Nothing";
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return id;
    }

    public String getName(String id) {
        String queryStr = "SELECT * FROM " + tableName + " WHERE ID = ?";
        String icecreamName = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                icecreamName = rs.getString("NAME");
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return icecreamName;
    }

    public void addRecord(IceCream icecream) throws SQLException {
        createConnection();
        try {
            String sqlInsertStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sqlInsertStr);
            stmt.setString(1, icecream.getIcecreamID());
            stmt.setString(2, icecream.getIceCreamName());
            stmt.setDouble(3, icecream.getIceCreamPrice());
            stmt.setString(4, icecream.getIceCreamDescription());
            stmt.setInt(5, icecream.getIceCreamRating());
            stmt.setString(6, icecream.getIceCreamImage());
            stmt.setString(7, icecream.getIceCreamType());
            stmt.setInt(8, icecream.getIceCreamAvailable());
            stmt.setString(9, icecream.getIceCreamLongDesc());
            stmt.setString(10, icecream.getIceCreamIngredients());

            stmt.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        } finally {
            shutDown();
        }
    }

    public ArrayList<IceCream> selectAllIceCream() {
        IceCream icecream = new IceCream();
        ArrayList<IceCream> icecreamList = new ArrayList<IceCream>();
        String sqlQueryStr = "SELECT * from " + tableName;

        try {
            stmt = conn.prepareStatement(sqlQueryStr);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                icecreamList.add(new IceCream(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return icecreamList;
    }

    public void updateRecord(IceCream icecream) {
        createConnection();
        try {
            String updateStr = "UPDATE " + tableName + " SET name = ?, price = ?, description = ?, rating = ?, image = ?, type = ?, available = ?, descl = ?, ingrediants = ? " + " WHERE id = ?";
            stmt = conn.prepareStatement(updateStr);
            stmt.setString(1, icecream.getIceCreamName());
            stmt.setDouble(2, icecream.getIceCreamPrice());
            stmt.setString(3, icecream.getIceCreamDescription());
            stmt.setInt(4, icecream.getIceCreamRating());
            stmt.setString(5, icecream.getIceCreamImage());
            stmt.setString(6, icecream.getIceCreamType());
            stmt.setInt(7, icecream.getIceCreamAvailable());
            stmt.setString(8, icecream.getIceCreamLongDesc());
            stmt.setString(9, icecream.getIceCreamIngredients());
            stmt.setString(10, icecream.getIcecreamID());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        }
    }

    public void deleteRecord(String id) {
        createConnection();
        try {
            String deleteStr = "DELETE FROM " + tableName + " WHERE id = ?";
            stmt = conn.prepareStatement(deleteStr);
            stmt.setString(1, id);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        }
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
        ArrayList<IceCream> icecreamList = new ArrayList<IceCream>();
        icecreamDA icda = new icecreamDA();
        icecreamList = icda.selectAllIceCream();
        System.out.println(icecreamList);

    }
}
