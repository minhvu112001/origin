package shop;

public class Product {
    private int id;
    private String productName;
    private Double price;
    private String imageUrl;

    public Product(int id, String productName, Double price, String imageUrl){
        super();
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.imageUrl = imageUrl;
    }

    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id = id;
    }
    public String getProductName(){
        return productName;
    }
    public void setProductName(String productName){
        this.productName = productName;
    }
    public Double getPrice(){
        return price;
    }
    public void setPrice(Double price){
        this.price = price;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
