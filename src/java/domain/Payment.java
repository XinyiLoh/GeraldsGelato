package domain;

/**
 *
 * @author Koh Hui Hui
 */
public class Payment {
    
    private String paymentId;
    private double paymentAmount;
    private String paymentDate;
    private String paymentMode;
    private String orderStatus;
    private String cartId;
    private String custId;
    
    public Payment(){
    }
    
    public Payment(String paymentId, double paymentAmount, String paymentDate, String paymentMode, String orderStatus, String cartId, String custId){
        this.paymentId = paymentId;
        this.paymentAmount = paymentAmount;
        this.paymentDate = paymentDate;
        this.paymentMode = paymentMode;
        this.orderStatus = orderStatus;
        this.cartId = cartId;
        this.custId = custId;
    }
    
    
    public String getPaymentId(){
        return paymentId;
    }
    
    public void setPaymentId(String paymentId){
        this.paymentId = paymentId;
    }
    
    public double getPaymentAmount(){
        return paymentAmount;
    }
    
    public void setPaymentAmount(double paymentAmount){
        this.paymentAmount = paymentAmount;
    }
    
    public String getPaymentDate(){
        return paymentDate;
    } 
    
    public void setPaymentDate(String paymentDate){
        this.paymentDate = paymentDate;
    }
    
    public String getPaymentMode(){
        return paymentMode;
    }
    
    public void setPaymentMode(String paymentMode){
        this.paymentMode = paymentMode;
    }
            
    public String getOrderStatus(){
        return orderStatus;
    }
    
    public void setOrderStatus(String orderStatus){
        this.orderStatus = orderStatus;
    }
            
    public String getCartId(){
        return cartId;
    }
    
    public void setCartId(String cartId){
        this.cartId = cartId;
    }
            
    public String getCustId(){
        return custId;
    }
    
    public void setCustId(String custId){
        this.custId = custId;
    }
    
}