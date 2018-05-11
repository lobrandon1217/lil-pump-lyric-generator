/*
 * Used to store the MySQL Handler object so that you do not have to recreate it every single time
 */
package lyricgen;

/**
 *
 * @author Brandon
 */
public class mysqlStorage {
    public static MySQLHandler sqlHandler;
    static {
        sqlHandler = new MySQLHandler();
    }
}
