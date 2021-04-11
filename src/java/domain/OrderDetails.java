/**
 *
 * @author Koh Hui Hui
 */

package domain;

public class OrderDetails {

    private String id;
    private String payId;
    private String prodId;
    private int quantity;

    public OrderDetails() {

    }

    public OrderDetails(String id, String payId, String prodId, int quantity) {
        this.id = id;
        this.payId = payId;
        this.prodId = prodId;
        this.quantity = quantity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPayId() {
        return payId;
    }

    public void setPayId(String payId) {
        this.payId = payId;
    }

    public String getProdId() {
        return prodId;
    }

    public void setProdId(String prodId) {
        this.prodId = prodId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
