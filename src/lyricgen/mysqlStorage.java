/*
 * Used to store the MySQL Handler object so that you do not have to recreate it every single time
 */
package lyricgen;

/**
 * Used to store a MySQL handler because creating a new one every 2 seconds
 * will lag the program
 * @author Brandon
 */
public class mysqlStorage {
    public static MySQLHandler sqlHandler;
    /**
     * Initializes the sqlHandler object
     */
    static {
        sqlHandler = new MySQLHandler();
    }
}
