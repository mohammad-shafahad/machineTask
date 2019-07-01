/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author user
 */
public class DBManager {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public DBManager(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver found");
        }
        catch(Exception e)
        {
            System.out.println("not found");
        }
    }
    public Connection getCon(){
        try{
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "");
            System.out.println("connetion shi hai");
        }
        catch(Exception e)
        {
            System.out.println("Connection not happened");
            con=null;
        }
        return con;
    }
    public  boolean executeNonQuery(String query){
        con=getCon();
        try{
            ps=con.prepareStatement(query);
            ps.executeUpdate();
            return true;
        }
        catch(Exception e){
            return false;
        }
    }
    public ResultSet selectQuery(String query){
        con=getCon();
        try {
            ps=con.prepareStatement(query);
            rs=ps.executeQuery();
            return rs;
        } catch (Exception e) {
            return rs;
        }
    }
    public static void main(String[] args) {
        DBManager db=new DBManager();
        System.out.println(db);
        System.out.println(db.getCon());
    }

}
