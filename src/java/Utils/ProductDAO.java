/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nguye
 */
public class ProductDAO {
    protected Connection conn = null;
    protected PreparedStatement st = null;
    
    
    public List<ProductDTO> getAll() {
        List<ProductDTO> list = new ArrayList<>();
        
        try {
            conn = DBUtils.getConnection();
            st = conn.prepareStatement("Select * from [tblProducts]");
            ResultSet rs = st.executeQuery();
            
            while (rs.next()) {
                ProductDTO p = new ProductDTO();
                p.setProductID(rs.getString("productID"));
                p.setProductName(rs.getString("productName"));
                p.setPrice(rs.getInt("price"));
                p.setImg(rs.getString("img"));
                list.add(p);
            }
            
        } catch (Exception ex){}
        return list;
    }
    
    public List<ProductDTO> findByName(String name) {
        List<ProductDTO> list = new ArrayList<>();
        
        try {
            conn = DBUtils.getConnection();
            st = conn.prepareStatement("Select * from [tblProducts] Where [productName] Like ?");
            st.setString(1,"%"+ name + "%");
            ResultSet rs = st.executeQuery();
            
            
            while (rs.next()) {
                ProductDTO p = new ProductDTO();
//                p.setProductID(rs.getString("productID"));
                p.setProductName(rs.getString("productName"));
                p.setPrice(rs.getInt("price"));
                p.setImg(rs.getString("img"));
                list.add(p);
            }
            
        } catch (Exception ex){}
        return list;
    }
    
    public ProductDTO getProductByID(String productId) {
        ProductDTO p = new ProductDTO();
        
        try {
            conn = DBUtils.getConnection();
            st = conn.prepareStatement("Select * from [tblProducts] Where [productID] = ?");
            st.setString(1, productId);
            ResultSet rs = st.executeQuery();
            
            if (rs.next()) {
                p.setProductID(rs.getString("productID"));
                p.setProductName(rs.getString("productName"));
                p.setPrice(rs.getInt("price"));
                p.setImg(rs.getString("img"));
            } else {
                return null;
            }
        } catch (Exception ex){}
        return p;
    }
}
