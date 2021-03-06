/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lyricgen;

/**
 * Import Java's SQL and other stuff we need for this
 */
import java.sql.*;
import java.util.*;

/**
 *
 * @author Brandon
 */
public class MySQLHandler {
    /**
     * Fields
     */
    private Connection sqlConnection;
    
    /**
     * Initializes the connection.
     * Required to do anything.
     */
    public MySQLHandler() {
        try {
            sqlConnection = DriverManager.getConnection("jdbc:mysql://den1.mysql2.gear.host:3306/lyricgen","lyricgen","Ig83!_5JWCV6"); //Initialize the SQL Connection
            System.out.println("Successfully connected to the database.");
        } catch(SQLException ex){
            System.out.println("Error connecting to database.");
        }
    }
    
    /**
     * Execute Query 
     * 
     * Executes a query, different from simple execute
     * Returns a resultset, and cannot modify the table, unlike execute
     * 
     * @param query string for what you want to execute, e.g. SELECT * FROM table
     * @return a resultset containing whatever you get from the query inputted
     * @throws SQLException 
     */
    public ResultSet executeQuery(String query) throws SQLException {
        Statement sqlStatement = sqlConnection.createStatement();
        return sqlStatement.executeQuery(query);
    }
    
    /**
     * Execute
     * 
     * Allows for database editing and anything not allowed by execute query
     * 
     * @param query what you want to execute
     * @throws SQLException 
     */
    public void execute(String query) throws SQLException {
        Statement sqlStatement = sqlConnection.createStatement();
        sqlStatement.execute(query);
    }
    
    /**
     * Gets the user data from an id.
     * 
     * @param id
     * @return HashMap of the SQL users table with only 1 row
     * @throws SQLException 
     */
    public HashMap getUserFromId( int id ) throws SQLException {
        //Create a new statement for this
        Statement tempStatement = sqlConnection.createStatement();
        //Get the results
        ResultSet nameResult = tempStatement.executeQuery(String.format("SELECT * FROM users WHERE id = %s;", id));
        //Create a HashMap
        HashMap result = new HashMap();
        while( nameResult.next() ) {
            result.put("id", nameResult.getInt("id"));
            result.put("username", nameResult.getString("username"));
            result.put("password", nameResult.getString("password"));
            result.put("is_admin", nameResult.getString("is_admin"));
            break; //make sure it's one only
        }
        return result;
    }

}
