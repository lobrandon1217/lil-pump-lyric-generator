/*
 * This is the class used to create the lyrics with the markov chain algorithm 
 */
package lyricgen;

import java.util.*;

/**
 *
 * @author Brandon
 */
public class LyricGenerator {
    /**
     * Fields
     */
    private Hashtable<String, ArrayList<String>> wordTable; //to store words that we need in order to generate
    private Random rng; //For the magic
    
    /**
     * Constructor
     */
    public LyricGenerator() {
        wordTable = new Hashtable<String, ArrayList<String>>(); //initialize the wordTable
        wordTable.put("--begin", new ArrayList<String>()); //Add a new ArrayList with the name --begin because lyrics could overlap it
        wordTable.put("--ending", new ArrayList<String>()); //Add a new arraylist with the name ending, same reason: safety
        rng = new Random();
    }
    
    public void insertString(String songLyric) {
        //Split the song into individual words
        String[] words = songLyric.split(" ");
        //Loop through each word and add it to the specific hashtable location
        for(int i=0;i<words.length;i++) {
            //BEGINNING
            if(i==0) {
                ArrayList<String> beginArray = wordTable.get("--begin");
                beginArray.add(words[i].replaceAll("[^a-zA-Z\\n ]", "").toLowerCase());
            } else if(i==words.length-1){
                //END
                // I don't think this matters
                continue;
                //So that you will never have to get the last word
            }
            //ALL OTHERS
            if( wordTable.get(words[i].replaceAll("[^a-zA-Z\\n ]", "").toLowerCase()) == null ) {
                //Word doesn't exist yet
                ArrayList<String> newWordList = new ArrayList<String>();
                newWordList.add(words[i+1]);
                wordTable.put(words[i].replaceAll("[^a-zA-Z\\n ]", "").toLowerCase(), newWordList);
            } else {
                //Word does exist
                ArrayList<String> currentWordList = wordTable.get(words[i].replaceAll("[^a-zA-Z\\n ]", "").toLowerCase());
                currentWordList.add(words[i+1]);
            }
        }
    }
    
    public String createLyrics() {
        //Initialize the new song
        ArrayList<String> newSong = new ArrayList<String>();
        
        //Get a random beginning word
        ArrayList<String> beginningList = wordTable.get("--begin");
        String newWord = beginningList.get(rng.nextInt(beginningList.size()));
        newSong.add(newWord);
        
        //Loop 100 times as a test
        for(int i=0;i<300;i++){
            //Get the arraylist from the newest word
            ArrayList<String> newestWordList = wordTable.get(newWord.replaceAll("[^a-zA-Z\\n ]", "").toLowerCase());
            //Get a random word from it
            String newWord2;
            try{
                newWord2 = newestWordList.get(rng.nextInt(newestWordList.size()));
                //Add it to the new song
                newSong.add(newWord2);
                newWord = newWord2.toString().replaceAll("[^a-zA-Z\\n ]", "").toLowerCase();
            }catch(Exception e){
                System.out.println(e.toString());
                System.out.println(String.format("Trying to get from %s failed!", newWord.replaceAll("[^a-zA-Z\\n ]", "").toLowerCase()));
            }
        }
        //Return it all together
        return String.join(" ", newSong);
    }
}
