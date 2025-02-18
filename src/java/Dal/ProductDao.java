/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Product;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author HOME PC
 */

public class ProductDao extends DBContext {

    public List<Product> getLatestProduct() {
        List<Product> result = new ArrayList<>();
        String query = "Select Top 8 * from Products";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setDescription(rs.getString("description"));
                product.setBrand(rs.getString("brand"));
                product.setColor(rs.getString("color"));
                product.setSize(rs.getString("size"));
                product.setType(rs.getString("type"));
                product.setPrice(rs.getDouble("price"));
                product.setReleaseDate(rs.getInt("releaseDate"));
                product.setImageURL(rs.getString("imageURL"));
                result.add(product);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
}
