package domain;

/**
 *
 * @author Koh Hui Hui
 */
public class Customer {
    private String custId;
    private String firstname;
    private String lastname;
    private String address;
    private String city;
    private String state;
    private int postcode;
    private String email;
    private String phone;
    
    public Customer(){
    }
    
    public Customer(String custId, String firstname, String lastname, String address, String city, String state, int postcode, String email, String phone) {
        this.custId = custId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.city = city;
        this.state = state;
        this.postcode = postcode;
        this.email = email;
        this.phone = phone;
    }

    public String getCustId() {
        return custId;
    }

    public void setCustId(String custId) {
        this.custId = custId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getPostcode() {
        return postcode;
    }

    public void setPostcode(int postcode) {
        this.postcode = postcode;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Customer{" + "custId=" + custId + ", firstname=" + firstname + ", lastname=" + lastname + ", address=" + address + ", city=" + city + ", state=" + state + ", postcode=" + postcode + ", email=" + email + ", phone=" + phone + '}';
    }
}
