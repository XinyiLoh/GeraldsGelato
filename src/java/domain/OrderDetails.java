package domain;

/**
 *
 * @author Koh Hui Hui
 */

public class OrderDetails {

    private int quantity;
    private String prodId;
    private String payId;
    private String id;

    public OrderDetails() {

    }

    public OrderDetails(String id, int quantity, String prodId, String payId) {
        this.id = id;
        this.quantity = quantity;
        this.payId = payId;
        this.prodId = prodId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProdId() {
        return prodId;
    }

    public void setProdId(String prodId) {
        this.prodId = prodId;
    }

    public String getPayId() {
        return payId;
    }

    public void setPayId(String payId) {
        this.payId = payId;
    }
    
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "OrderDetails{" + " quantity=" + quantity + ", prodId=" + prodId + ", payId=" + payId + '}';
    }

}
