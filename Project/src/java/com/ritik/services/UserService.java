/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ashmita.services;

import com.ashmita.entites.User;
import com.ashmita.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author RISHAV DUTTA
 */
public class UserService {

    public static boolean doLogin(User emp) {

        boolean result = false;

        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "Select * from users where emailAddress=? and password=?";

        try {

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emp.getEmailAddress());
            preparedStatement.setString(2, emp.getPassword());

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                result = true;
            }

            con.close();

        } catch (SQLException ex) {

            ex.printStackTrace();
        }

        return result;
    }

    public static boolean doSignUp(User emp) {

        boolean result = false;
        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "INSERT INTO contactus(emailAddress,firstName,lastName)" + "VALUES(? ,? ,? )";

        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, emp.getEmailAddress());
            
            preparedStatement.setString(2, emp.getFirstName());
            preparedStatement.setString(3, emp.getLastName());

            int rs = preparedStatement.executeUpdate();
            
            if (rs==1) {
                result = true;
            }
            con.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
