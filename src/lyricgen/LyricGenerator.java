/*
 * This is the class used to create the lyrics with the markov chain algorithm 
 */
package lyricgen;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
        //Remove text inside square brackets because they are wrong usually when generated
        String songLyricReplaced = songLyric.trim().replaceAll("\\[(.*)]", "").replaceAll(" +", " ");
        
        //Split the song into individual words
        String[] words = songLyricReplaced.split(" ");
        //Loop through each word and add it to the specific hashtable location
        for(int i=0;i<words.length;i++) {
            //BEGINNING
            //Or the first letter is capitalized and not at the end
            if(i==0 || (Character.isUpperCase(words[i].charAt(0)) && i != words.length-1)) {
                ArrayList<String> beginArray = wordTable.get("--begin");
                beginArray.add(words[i]);
            } else if(i==words.length-1){
                //END
                // I don't think this matters
                continue;
                //So that you will never have to get the last word
            }
            //ALL OTHERS
            if( wordTable.get(words[i]) == null ) {
                //Word doesn't exist yet
                ArrayList<String> newWordList = new ArrayList<String>();
                newWordList.add(words[i+1]);
                wordTable.put(words[i], newWordList);
            } else {
                //Word does exist
                ArrayList<String> currentWordList = wordTable.get(words[i]);
                currentWordList.add(words[i+1]);
            }
        }
    }
    
    public String createLyrics(int wordLength) {
        //Initialize the new song
        ArrayList<String> newSong = new ArrayList<String>();
        
        //Get a random beginning word
        ArrayList<String> beginningList = wordTable.get("--begin");
        String newWord = beginningList.get(rng.nextInt(beginningList.size()));
        newSong.add(newWord);
        
        //Loop slider amount of times
        for(int i=0;i<wordLength;i++){
            //Get the arraylist from the newest word
            ArrayList<String> newestWordList = wordTable.get(newWord);
            //Debug purposes
            if( newestWordList == null ) {
                //System.out.println(newWord);
            }
            //Check the arraylist for null or empty, more likely the latter
            if(newestWordList == null || newestWordList.size() == 0){
                System.out.println(newWord);
                //Get all keys
                Set<String> keys = wordTable.keySet();
                //Convert keys to String[]
                String[] keyArray = keys.toArray(new String[keys.size()]);
                //Get random key
                String randKey = keyArray[rng.nextInt(keyArray.length)];;
                while( randKey == "--begin" || randKey == "--ending" ) {
                    randKey = keyArray[rng.nextInt(keyArray.length)];;
                }
                //Add it to the song
                newSong.add(randKey);
                System.out.println(String.format("Replaced '%s' with new word '%s'", newWord, randKey));
                continue;
            }
            //Get a random word from it
            newWord = newestWordList.get(rng.nextInt(newestWordList.size()));
            //Add it to the new song
            newSong.add(newWord);
        }
        //Return it all together
        return punctuationCleanUp(String.join(" ", newSong));
    }
    /**
     * @author WhitmanWilson
     * Does a number of string operations to attempt to correct punctuation to be in in-line with standard English. WIP.
     * @param song Cannot contain '|' Char
     * @return  song, cleaned
     */
protected static String punctuationCleanUp(String song){
        Pattern pattern;
        Matcher matcher;
        int start;
        int end;
        String match;
        /* 
        Yes, ive probably overcomplicated this.
        parenthese and quote fixer. finds problems with regex, and
        replaces them with 'tags' of the same length which are later replaced corrected string.
        This is to avoid indexing errors that result from adding coprrections(whitch change the size of the song) durring matching.
        */
        String pat = "(\\([A-Za-z0-9_!?'\"`.,]+)|([A-Za-z0-9_!?'\"`.,]+\\))|(\"[A-Za-z0-9_!?'\"`.,]+)|[A-Za-z0-9_!?'\"`.,]+\"";// looks for ...) , (... , ..." , and "...
        pattern = Pattern.compile(pat);
        matcher = pattern.matcher(song);
        ArrayList<String> corrections = new ArrayList<String>();
        while(matcher.find()){
                start = matcher.start();
                end = matcher.end();
                match = song.substring(start,end);
                if(song.charAt(end) == ')' ) { // if match has a closing paren
                    //System.out.println("(() match: " +match);
                    corrections.add("("+match.replace("(",""));
                    song = song.substring(0,start) +createReplaceTag(match)+ song.substring(end);
                }else if( song.charAt(start-1) == '('){ 
                    //System.out.println("()) match: " +match);
                    corrections.add(match);
                    song = song.substring(0,start) +createReplaceTag(match)+ song.substring(end);
                }else if( song.charAt(start) == '('){
                    //System.out.println("((( match: " +match);
                    corrections.add(match+")");
                    song = song.substring(0,start) +createReplaceTag(match)+ song.substring(end);
                }else if( song.charAt(end-1) == ')'){
                    //System.out.println("))) match: " +match);
                    corrections.add("("+match);
                    song = song.substring(0,start) +createReplaceTag(match)+ song.substring(end);
                }else if(song.charAt(start) == '"' && song.charAt(end-1) == '"'){
                     System.out.println("\"-\" match: " +match);
                }else if( song.charAt(start) == '"'){
                    //System.out.println("\"-> match: " +match);
                    corrections.add(match+'"');
                    song = song.substring(0,start) +createReplaceTag(match)+ song.substring(end);
                }else if( song.charAt(end-1) == '"'){
                    //System.out.println("<-\" match: " +match);
                    corrections.add(" \""+match);
                    song = song.substring(0,start) +createReplaceTag(match)+ song.substring(end);
                }else System.out.println("??? match: " +match);
        }
        for(String correction :corrections){ //replace tags with thier corrected matches.
            song = song.replaceFirst("\\|+", correction);
        }
        song = song.replace("\" \"", " "); // join akward consecutive quotations
        song = song.replace(") ("," ");// join akward consecutive parenthesis
        song = song.replace(",)", ")");// clear ,) resulting from ( closing.
        if(song.charAt(song.length()-1) == ','){
            song = song.substring(0,song.length()-1);
        }
        return song;
    }
    /**
     * @author WhitmanWilson
     * create same string of '|'s, that is the same length as the match, to be replaced becasue changing string length causes problems with Matcher.
     * @param match
     * @return 
     */
    protected static String createReplaceTag(String match){
        String rtag = "";
        for(int i=0;i < match.length();i++){
            rtag += "|";
        }
        return rtag;
    }
}
