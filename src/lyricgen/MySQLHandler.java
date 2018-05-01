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

/**
 *
 * @author Brandon
 */
public class MySQLHandler {
    /**
     * Fields
     */
    private Connection sqlConnection;
    private Statement sqlStatement;
    
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
        sqlStatement = sqlConnection.createStatement(); //Create the statement for use with sql
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
        sqlStatement.execute(query);
    }
}
