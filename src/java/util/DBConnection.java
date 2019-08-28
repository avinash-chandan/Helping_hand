package util;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection
{
	private static Connection conn;
    static
    {
        try
       {
           Class.forName("oracle.jdbc.OracleDriver");
           conn=DriverManager.getConnection("jdbc:oracle:thin:@//LAPTOP-4H1J7Q0A:1521/xe","help","hand");          
           System.out.println("connection opened");
       }
       catch(Exception e)
       {
           e.printStackTrace();

       }
    }
    public static Connection getConnection()
    {
        return conn;
    }
    public static void closeConnection()
    {
        try
        {
            conn.close();
            System.out.println("connection closed");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("error occured");
        }
    }
}