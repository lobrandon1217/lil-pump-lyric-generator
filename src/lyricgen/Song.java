/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lyricgen;

/**
 * This is for the JList.
 * @author Brandon
 */
public class Song {
    /**
     * Fields
     */
    private String title; // Song title
    private int id; // Song ID in the SQL database
    
    /**
     * Constructor
     * 
     * @param title title of the song
     * @param id id of the song in the sql database
     */
    public Song(String title, int id){
        /**
         * Update the fields
         */
        this.title = title;
        this.id = id;
    }
    
    /**
     * toString
     * 
     * @return String of the song title
     */
    public String toString() {
        return title;
    }
    
    /**
     * Get Title
     * @return title as string
     */
    public String getTitle() {
        return title;
    }
    
    /**
     * Get ID
     * @return id as int
     */
    public int getId() {
        return id;
    }
}
