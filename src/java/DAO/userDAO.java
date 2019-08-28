/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import pojo.User;
import util.DBConnection;

/**
 *
 * @author AVINASH
 */
public class userDAO {
    
    public static boolean loginValidate(String username, String password) {
        boolean status = false;
        try {
            System.out.println(" inside user dao "+username);
            Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select password from users where username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                status = password.equalsIgnoreCase(rs.getString(1));
            }
            ps.close();
        } catch (Exception e) {
            System.out.println("Some error has occured" + e);
        }
        System.out.println(" "+status);
        return status;
    }
    
     public static int getUserId(String username) {
        int str = 0;
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select userid from users where username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                str = rs.getInt(1);
            }
            ps.close();
        } catch (SQLException e) {
            System.out.println("Some error has occured" + e);
        }
        return str;
    }
     
     public static void incrementDonates(int userid)
     {
         try{
             Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("update users set donatepoint=donatepoint+1 where userid=?");
            ps.setInt(1, userid);
            ps.executeUpdate();
         }
         catch (SQLException e) {
            System.out.println("Some error has occured" + e);
        }
     }
     
     public static void incrementReceived(int userid)
     {
         try{
             Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("update users set receivepoint=receivepoint+1 where userid=?");
            ps.setInt(1, userid);
            ps.executeUpdate();
         }
         catch (SQLException e) {
            System.out.println("Some error has occured" + e);
        }
     }
     
     public static User getDetails(int userid)
     {
         User user=new User();
         try{
             Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from users where userid=?");
            ps.setInt(1, userid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                user.setName(rs.getString("name"));
                user.setAddress(rs.getString("address"));
                user.setDonatepoint(rs.getInt("donatepoint"));
                user.setEmail(rs.getString("email"));
                user.setLocality(rs.getString("locality"));
                user.setPassword(rs.getString("password"));
                user.setPhoneno(rs.getString("phoneno"));
                user.setReceivepoint(rs.getInt("receivepoint"));
                user.setUserid(rs.getInt("userid"));
                user.setUsername(rs.getString("username"));
            }
            ps.close();
        } catch (SQLException e) {
            System.out.println("Some error has occured" + e);
        }
        return user;
         }
     public static String getName(int userid)
     {
         String name=null;
         try{
             Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select name from users where userid=?");
            ps.setInt(1, userid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                name=rs.getString("name");
            }
            ps.close();
        } catch (SQLException e) {
            System.out.println("Some error has occured" + e);
        }
        return name;
     }
     public static int getUserId()
     {
         int userId=0;
         try{
             Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select userid from users order by userid desc");
            ResultSet rs=ps.executeQuery();
            rs.next();
            userId=rs.getInt(1);
           
     } catch (SQLException e) {
            System.out.println("Some error has occured" + e);
        }
          return userId;
     }
     public static boolean registerUser(User u)
     {
         
         
         boolean result=false;
         try{
             Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getUsername());
            ps.setString(4, u.getPassword());
            ps.setString(5, u.getPhoneno());
            ps.setString(6, u.getAddress());
            ps.setString(7, u.getLocality());
            ps.setInt(8, u.getUserid());
            ps.setInt(9, u.getDonatepoint());
            ps.setInt(10, u.getReceivepoint());
            String phone=u.getPhoneno();
            {
                if(phone.length()!=10)
                {
                    throw new NullPointerException();
                }
            }
             System.out.println("In registerUser "+u.getName());
            int x=ps.executeUpdate();
            result=(x==1);
            
     } catch(NullPointerException n)
     {
         System.out.println("error in phone no");
     }
         catch (SQLException e) {
            System.out.println("Some error has occured" + e);
        }
         return result;
}
}
