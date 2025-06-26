/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author varshitha
 */
public class tables {
    public static void main(String[] args)
    {
        Connection con =null;
        Statement st=null;
        try{
            con=ConnectionProvider.getCon();
            st=con.createStatement();
            //st.executeUpdate("create table inventory_holder(ih_pk int AUTO_INCREMENT primary key,division varchar(20),name varchar(200),mobilenumber varchar(50),email varchar(200),password varchar(100),address varchar(500))");
            //st.executeUpdate("insert into inventory_holder(division,name,mobilenumber,email,password,address) values ('abcd','test','1234567890','test@email.com','1234','india')");
            //st.executeUpdate("create table equipment(sno_pk int AUTO_INCREMENT primary key,name_equipment varchar(200),make varchar(200),id_no varchar(200),ran_ge varchar(200),acceptane_criteria varchar(200),frequency_carlibration varchar(200),calibration_agency varchar(200),date_of_calibration date,calibration_due_date date,recall_date date)");
            //st.executeUpdate("create table shelf_life(sno_pk int AUTO_INCREMENT primary key,item_desc varchar(500),expiry_date date,quantity int(20),disposal_mechanism varchar(200),remarks varchar(500))");
            st.executeUpdate("create table disposal_record (sno_pk int AUTO_INCREMENT primary key,item_desc varchar(500),quantity int(20),manufacture_date date,expiry_date date,disposal_date date,issued_to varchar(100),disposal_mechanism varchar(200),remarks varchar(500))");
            JOptionPane.showMessageDialog(null,"Table created sucessfully");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
        finally{
            try{
                con.close();
                st.close();
            }
            catch(Exception e){
                
            }
        
        }
                }  
                
    }
            

