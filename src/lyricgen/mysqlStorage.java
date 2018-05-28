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
    private static String username;
    private static boolean is_admin;
    private static int id;
    
    // GETTER AND SETTERS
    
    /**
     * Sets the username
     * @param username 
     */
    public static void setUsername(String username) {
        mysqlStorage.username = username;
    }
    
    /**
     * Gets the username
     * @return Username as String
     */
    public static String getUsername() {
        return username;
    }
    
    /**
     * Sets the User to is_admin as admin status
     * @param is_admin boolean
     */
    public static void setAdmin(boolean is_admin) {
        mysqlStorage.is_admin = is_admin;
    }
    
    public static boolean getAdmin() {
        return is_admin;
    }
    
    public static void setID( int id ) {
        mysqlStorage.id = id;
    }
    
    public static int getID() {
        return id;
    }
}
