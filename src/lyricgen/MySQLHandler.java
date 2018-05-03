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
    private static Connection sqlConnection;
    
    /**
     * Constructor
     * 
     * Initializes the connection to SQL server
     * Also connects the statement to the actual connection
     * 
     * @throws SQLException 
     */
    public MySQLHandler() throws SQLException {
        sqlConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/lyricgen","root",""); //Initialize the SQL Connection
        System.out.println("Successfully connected to the database.");
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
    public static void execute(String query) throws SQLException {
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
