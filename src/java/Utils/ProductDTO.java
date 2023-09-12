/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author nguye
 */
public class ProductDTO {
    private String productID;
    private int price;
    private String productName;
    private String img;

    public ProductDTO(String productID, int price, String productName, String img) {
        this.productID = productID;
        this.price = price;
        this.productName = productName;
        this.img = img;
    }
    
    public ProductDTO(){
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

       
}
