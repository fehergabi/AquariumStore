package manager;

import dbmanager.DatabaseManager;
import java.util.List;


public class ProductDataService {
    private List<Product> products = null;

    public ProductDataService() {
        products = DatabaseManager.getInstance().getProducts();
    }

    public List<Product> getProducts() {
        return products;
    }
    
    public Product findProduct(Integer PID){
        return products.stream().filter(p -> p.getPID().equals(PID)).findFirst().get();
    }
}
