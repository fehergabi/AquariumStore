
package dbmanager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import manager.Product;
import umanager.User;

public class DatabaseManager {
    private static DatabaseManager dbManager = null;
    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet result = null;
    private final String connectionURL = "jdbc:derby://localhost:1527/aquariumstore";

    private DatabaseManager() {
    }
    
    public static DatabaseManager getInstance(){
        if (dbManager == null) {
            dbManager = new DatabaseManager();
            dbManager.connectToDatabase();
        }
        return dbManager;
    }
    
    private void connectToDatabase(){
        try {
            conn = DriverManager.getConnection(connectionURL, "FT", "FT");
            stmt = conn.createStatement();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public List<Product> getProducts(){
        List<Product> products = new ArrayList<>();
        try {
            result = stmt.executeQuery("select * from FT.PRODUCTS");
            while (result.next()) {
                Product prod = new Product(result.getInt("ID"), result.getString("NAME"), result.getInt("PRICE"));
                products.add(prod);
            }
        } catch (Exception e) {
        }
        return products;
    } 
     public List<User> getUsers(){
        List<User> users = new ArrayList<>();
        try {
            result = stmt.executeQuery("select * from FT.USERS");
            while (result.next()) {
                User felh = new User(result.getString("USERNAME"), result.getString("NAME"));
                users.add(felh);
            }
        } catch (Exception e) {
        }
        return users;
    } 
}
