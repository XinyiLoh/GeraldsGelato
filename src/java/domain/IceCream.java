package domain;

/**
 *
 * @author Siah Xin Ying
 */
public class IceCream {

    private String icecreamID;
    private String iceCreamName;
    private double iceCreamPrice;
    private String iceCreamDescription;
    private int iceCreamRating;
    private String iceCreamImage;
    private String iceCreamType;
    private int iceCreamAvailable;
    private String iceCreamLongDesc;
    private String iceCreamIngredients;

    public IceCream() {
    }

    public IceCream(String icecreamID, String iceCreamName, double iceCreamPrice, String iceCreamDescription, int iceCreamRating, String iceCreamImage, String iceCreamType, int iceCreamAvailable, String iceCreamLongDesc, String iceCreamIngredients) {
        this.icecreamID = icecreamID;
        this.iceCreamName = iceCreamName;
        this.iceCreamPrice = iceCreamPrice;
        this.iceCreamDescription = iceCreamDescription;
        this.iceCreamRating = iceCreamRating;
        this.iceCreamImage = iceCreamImage;
        this.iceCreamType = iceCreamType;
        this.iceCreamAvailable = iceCreamAvailable;
        this.iceCreamLongDesc = iceCreamLongDesc;
        this.iceCreamIngredients = iceCreamIngredients;
    }

    public String getIcecreamID() {
        return icecreamID;
    }

    public void setIcecreamID(String icecreamID) {
        this.icecreamID = icecreamID;
    }

    public String getIceCreamName() {
        return iceCreamName;
    }

    public void setIceCreamName(String iceCreamName) {
        this.iceCreamName = iceCreamName;
    }

    public double getIceCreamPrice() {
        return iceCreamPrice;
    }

    public void setIceCreamPrice(double iceCreamPrice) {
        this.iceCreamPrice = iceCreamPrice;
    }

    public String getIceCreamDescription() {
        return iceCreamDescription;
    }

    public void setIceCreamDescription(String iceCreamDescription) {
        this.iceCreamDescription = iceCreamDescription;
    }

    public int getIceCreamRating() {
        return iceCreamRating;
    }

    public void setIceCreamRating(int iceCreamRating) {
        this.iceCreamRating = iceCreamRating;
    }

    public String getIceCreamImage() {
        return iceCreamImage;
    }

    public void setIceCreamImage(String iceCreamImage) {
        this.iceCreamImage = iceCreamImage;
    }

    public String getIceCreamType() {
        return iceCreamType;
    }

    public void setIceCreamType(String iceCreamType) {
        this.iceCreamType = iceCreamType;
    }

    public int getIceCreamAvailable() {
        return iceCreamAvailable;
    }

    public void setIceCreamAvailable(int iceCreamAvailable) {
        this.iceCreamAvailable = iceCreamAvailable;
    }

    public String getIceCreamLongDesc() {
        return iceCreamLongDesc;
    }

    public void setIceCreamLongDesc(String iceCreamLongDesc) {
        this.iceCreamLongDesc = iceCreamLongDesc;
    }

    public String getIceCreamIngredients() {
        return iceCreamIngredients;
    }

    public void setIceCreamIngredients(String iceCreamIngredients) {
        this.iceCreamIngredients = iceCreamIngredients;
    }

    @Override
    public String toString() {
        return "IceCream{" + "icecreamID=" + icecreamID + ", iceCreamName=" + iceCreamName + ", iceCreamPrice=" + iceCreamPrice + ", iceCreamDescription=" + iceCreamDescription + ", iceCreamRating=" + iceCreamRating + ", iceCreamImage=" + iceCreamImage + ", iceCreamType=" + iceCreamType + ", iceCreamAvailable=" + iceCreamAvailable + ", iceCreamLongDesc=" + iceCreamLongDesc + ", iceCreamIngredients=" + iceCreamIngredients + '}';
    }
}
