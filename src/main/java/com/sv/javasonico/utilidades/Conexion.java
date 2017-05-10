/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.javasonico.utilidades;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 *
 * @author JMagoSV
 */
public class Conexion {
    private Connection conn = null;
    private String url, user, pass;

    public Connection getConn() {
        try
        {
            if(this.getDatosConexion())
            {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                conn = DriverManager.getConnection(this.url, this.user, this.pass);
            }
        }
        catch(Exception ex)
        {
            
        }
        return conn;
    }
    
    private boolean getDatosConexion()
    {
        try 
        {
            Properties prop = new Properties();
            try(InputStream file = Thread.currentThread().getContextClassLoader().getResourceAsStream("config.properties"))
            {
                prop.load(file);
                //Obtener Valores de la Conexion
                this.url = prop.getProperty("url");
                this.user = prop.getProperty("user");
                this.pass = prop.getProperty("password");
                return true;
            }
        }
       catch(Exception ex)
       {
           System.out.println(ex.getMessage());
           return false;
       }
    }
    
}
