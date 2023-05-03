/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ashmita.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author RISHAV DUTTA
 */
public class JDBCConnectionManager {

    public static Connection getMySQLConnection() {

        Connection connection = null;
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashmita", "root", "root");

        } catch (ClassNotFoundException | SQLException ex) {

        }

        return connection;
    }
}
