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
import java.sql.Statement;
import java.util.ArrayList;
import pojo.EWaste;
import pojo.Show;
import util.DBConnection;

/**
 *
 * @author AVINASH
 */
public class EWasteDAO {
    
    public static boolean insertEWaste(EWaste ew)
    {
        boolean done=false;
        try
        {
            Connection conn=DBConnection.getConnection();
            PreparedStatement ps=conn.prepareStatement("insert into ewaste values(?,?,?,?)");
            ps.setString(1,ew.getName());
            ps.setString(2,ew.getType());
            ps.setString(3, ew.getDescription());
            ps.setInt(4,ew.getUserid());
            int i=ps.executeUpdate();
            userDAO.incrementDonates(ew.getUserid());
            done=(i==1);
        }
        catch(SQLException e)
        {
             System.out.println("Error in inserting item. "+e);
        }
        return done;
    }
    
    public static ArrayList<String> getAllLocality()
    {
        ArrayList<String> areaList=new ArrayList<>();
        try{
            Connection conn=DBConnection.getConnection();
            Statement st =conn.createStatement();
            ResultSet rs=st.executeQuery("select locality from users where userid=(select distinct userid from ewaste)");
            while(rs.next())
            {
                areaList.add(rs.getString(1));
            }
        }
        catch(SQLException e)
        {
             System.out.println("Error in inserting item. "+e);
        }
        return areaList;
    }
    
    public static ArrayList<Show> getallresult(String locality,String type)
    {
        ArrayList<Show> showList=new ArrayList<>();
        try{
            System.out.println("inside try "+locality+type);
            Connection conn=DBConnection.getConnection();
            PreparedStatement ps1=conn.prepareStatement("select userid,address,phoneno,name from users where locality=?");
            PreparedStatement ps2=conn.prepareStatement("select name,description from ewaste where userid=? and type=?");
            ps1.setString(1, locality);
            ResultSet rs=ps1.executeQuery();
            while(rs.next())
            {
                ps2.setInt(1, rs.getInt("userid"));
                ps2.setString(2, type);
                ResultSet rs2=ps2.executeQuery();
                while(rs2.next())
                {
                    Show sh=new Show(rs.getString("name"),rs.getString("phoneno"),rs.getString("address"),rs2.getString("name"),rs2.getString("description"),rs.getInt("userid"));
                    showList.add(sh);
                }
            }
        }
        catch(SQLException e)
        {
             System.out.println("Error in inserting item. "+e);
        }
        return showList;
    }
    public static void deleteEwaste(int userid,String itemname,String type)
    {
    try{
    Connection conn=DBConnection.getConnection();
    PreparedStatement ps1=conn.prepareStatement("delete from ewaste where userid=? and name=? and type=?");
            ps1.setString(2, itemname);
            ps1.setInt(1,userid);
            ps1.setString(3, type);
            ps1.executeUpdate();
            System.out.println("deleted ewaste sucessfully");
    }
    catch(Exception ex)
    {
        System.out.println(""+ex);}
    }
}
