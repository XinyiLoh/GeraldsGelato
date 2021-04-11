package domain;

import java.sql.Date;

/**
 *
 * @author Koh Hui Hui
 */
public class Payment {
    
    private String paymentId;
    private double paymentAmount;
    private Date paymentDate;
    private String paymentMode;
    private String orderStatus;
    private String custId;
    
    public Payment(){
    }
    
    public Payment(String paymentId, double paymentAmount, Date paymentDate, String paymentMode, String orderStatus, String custId){
        this.paymentId = paymentId;
        this.paymentAmount = paymentAmount;
        this.paymentDate = paymentDate;
        this.paymentMode = paymentMode;
        this.orderStatus = orderStatus;
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
    
    public Date getPaymentDate(){
        return paymentDate;
    } 
    
    public void setPaymentDate(Date paymentDate){
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
            
    public String getCustId(){
        return custId;
    }
    
    public void setCustId(String custId){
        this.custId = custId;
    }

    @Override
    public String toString() {
        return "Payment{" + "paymentId=" + paymentId + ", paymentAmount=" + paymentAmount + ", paymentDate=" + paymentDate + ", paymentMode=" + paymentMode + ", orderStatus=" + orderStatus + ", custId=" + custId + '}';
    }
}