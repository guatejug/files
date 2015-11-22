package designpatterns.sample5.command;

import java.util.HashMap;

/**
 *
 * @author sergeiw
 */
public class DynamicCommandFactory {
   
    public static final String DIR_NORTH = "n";
    public static final String DIR_NORTH_EAST = "ne";
    public static final String DIR_NORTH_WEST = "nw";
    public static final String DIR_SOUTH = "s";
    public static final String DIR_SOUTH_EAST = "se";
    public static final String DIR_SOUTH_WEST = "sw";
    public static final String DIR_EAST = "e";
    public static final String DIR_WEST = "w";
    
    private static HashMap<String, Class<? extends ICommand>> registeredCommands = new HashMap<String, Class<? extends ICommand>>();

    
    public static void registerCommand(String key, Class<? extends ICommand> command) {
        registeredCommands.put(key, command);
    }
    
    public static ICommand resolveCommand(String key) throws InstantiationException, IllegalAccessException {
        ICommand command = null;
        
        if (registeredCommands.containsKey(key)) {
            command = registeredCommands.get(key).newInstance();
        }
                
        return command;        
    }
    
}
