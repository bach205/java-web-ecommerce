/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author HOME PC
 */
public class UserDao extends DBContext{
    
    public List<User> getAllUser(){
        List<User> list = new ArrayList<>();
        String query = "select * from users";
        try{
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                User obj = new User();
                obj.setId(rs.getInt("id"));
                obj.setEmail(rs.getString("email"));
                obj.setPassword("password");
                obj.setFirstName(rs.getString("firstName"));
                obj.setLastName(rs.getString("lastName"));
                obj.setGender(rs.getInt("gender"));
                obj.setAddress(rs.getString("address"));
                obj.setRole(rs.getInt("role"));
                list.add(obj);
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return list;
    } 
}
