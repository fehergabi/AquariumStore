
package manager;

import java.util.Objects;


public class Product {
    private Integer PID;
    private String name;
    private Integer price;

    public Product(Integer PID, String name, Integer price) {
        this.PID = PID;
        this.name = name;
        this.price = price;
    }

    public Integer getPID() {
        return PID;
    }

    public String getName() {
        return name;
    }

    public Integer getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return name + "<BR>" + price + "Ft";
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.PID);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Product other = (Product) obj;
        if (!Objects.equals(this.PID, other.PID)) {
            return false;
        }
        return true;
    }
    
    
}
