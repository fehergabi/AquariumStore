package umanager;

import java.util.ArrayList;
import java.util.List;
import manager.BasketItem;

public class User {

    private String uID;
    private String name;
    private List<BasketItem> basket = new ArrayList<>();

    public User(String uID, String name) {
        this.uID = uID;
        this.name = name;
    }

    public String getuID() {
        return uID;
    }

    public String getName() {
        return name;
    }

    public List<BasketItem> getBasket() {
        return basket;
    }

    @Override
    public String toString() {
        return  name;
    }

    
}
