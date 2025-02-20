/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Product;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author HOME PC
 */
public class ProductDao extends DBContext {

    private List<Product> productMapper(ResultSet rs, List<Product> result) throws SQLException {
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
        return result;
    }

    public List<Product> getLatestProduct() {
        List<Product> result = new ArrayList<>();
        String query = "Select Top 8 * from Products";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            result = productMapper(rs, result);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }

    public List<Product> search(Product product) {
        List<Product> result = new ArrayList<>();
        String subQuery = "";
        if (product.getTitle() != null && !product.getTitle().isBlank()) {
            subQuery += " title like N'%" + product.getTitle() + "%' ";
        }
        if (product.getBrand() != null && !product.getBrand().isBlank()) {
            if (!subQuery.isBlank()) {
                subQuery += " and ";
            }
            subQuery += " brand like N'%" + product.getBrand() + "%' ";
        }
        if (product.getColor() != null && !product.getColor().isBlank()) {
            if (!subQuery.isBlank()) {
                subQuery += " and ";
            }
            subQuery += " color like N'%" + product.getColor() + "%' ";
        }
        if (product.getSize() != null && !product.getSize().isBlank()) {
            if (!subQuery.isBlank()) {
                subQuery += " and ";
            }
            subQuery += " size like N'%" + product.getSize() + "%' ";
        }
        if (product.getType() != null && !product.getType().isBlank()) {
            if (!subQuery.isBlank()) {
                subQuery += " and ";
            }
            subQuery += " type like N'%" + product.getType() + "%' ";
        }
        if (!subQuery.isBlank()) {
            subQuery = " where " + subQuery;
        }
        String query = "Select * from products " + subQuery;

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            result = productMapper(rs, result);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }

    public Product productMapper(ResultSet rs) throws SQLException {
        Product product = new Product();
        while (rs.next()) {
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
        }
        return product;
    }

    public Product getProductById(int id) {
        String query = "select * from products where id = " + id;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            return productMapper(rs);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
}
