
package manager;


public class BasketItem extends Product {
   private Integer amount; 

    public BasketItem(Integer PID, String name, Integer price, Integer amount) {
        super(PID, name, price);
        if (amount < 1) {
            throw new IllegalArgumentException("Hibás paraméter: a mennyiség értéke nem lehet kisebb egynél.");
        }
        this.amount = amount;
       
    }
    
    public int subTotal(){
        return amount * getPrice();
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getAmount() {
        return amount;
    }

    @Override
    public String toString() {
        return super.toString() + "<BR>" + amount;
    }
    
    
    
}
