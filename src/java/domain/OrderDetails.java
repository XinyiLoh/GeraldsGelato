package domain;

/**
 *
 * @author Koh Hui Hui
 */

public class OrderDetails {

    private int quantity;
    private String prodId;
    private String payId;

    public OrderDetails() {

    }

    public OrderDetails(String prodId, String payId, int quantity) {
        this.prodId = prodId;
        this.payId = payId;
        this.quantity = quantity;
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
