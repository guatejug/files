/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns;

import designpatterns.sample5.Board;
import designpatterns.sample5.CheckersUserState;
import designpatterns.sample5.ChessPiece;
import designpatterns.sample5.ChessToCheckersPieceAdapter;
import designpatterns.sample5.IUserState;
import designpatterns.sample5.Point;
import designpatterns.sample5.SuperCheckersUserState;
import designpatterns.sample5.command.DownCheckersCommand;
import designpatterns.sample5.command.DownLeftCheckersCommand;
import designpatterns.sample5.command.DownRightCheckersCommand;
import designpatterns.sample5.command.DynamicCommandFactory;
import designpatterns.sample5.command.ICommand;
import designpatterns.sample5.command.LeftCheckersCommand;
import designpatterns.sample5.command.RightCheckersCommand;
import designpatterns.sample5.command.UpCheckersCommand;
import designpatterns.sample5.command.UpLeftCheckersCommand;
import designpatterns.sample5.command.UpRightCheckersCommand;
import java.util.Scanner;

/**
 *
 * @author sergeiw
 */
public class Command {
    public static void main(String[] args) throws InstantiationException, IllegalAccessException {
        System.out.println("JavaDay Patterns Game\n*************************");
        
        initCommands();
        Scanner input = new Scanner(System.in);
        
        // init
        IUserState userState = new CheckersUserState(new Point(0, 0));        
        Board board = new Board(6, 6);
        String inputText = "";
                
        // game loop
        do {
            board.render(userState);
            inputText = waitForCommand(userState, input);
            ICommand cmd = DynamicCommandFactory.resolveCommand(inputText.toLowerCase());
            if (cmd != null) {
                cmd.execute(board, userState);
                
                // border bounds
                if (!(userState instanceof SuperCheckersUserState)) {
                    if (userState.getPoint().getX()+1 == board.getSizeX()
                        || userState.getPoint().getY()+1 == board.getSizeY() ) {
                        
                        userState = new SuperCheckersUserState(userState.getPoint());
                        System.out.println("Congratulations!!");
                    }
                }                
            } else {
                System.out.println("Invalid Command");
            }
        } while(!inputText.equals("exit"));
        System.out.println("Thank you");
        
    }
    
    private static String waitForCommand(IUserState userState, Scanner input) {
        System.out.print(String.format("%s Next move: ", userState.getPoint().toString()));
        return input.nextLine();
    }
    
    private static void initCommands() {
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_NORTH, UpCheckersCommand.class);
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_NORTH_EAST, UpRightCheckersCommand.class);
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_NORTH_WEST, UpLeftCheckersCommand.class);
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_SOUTH, DownCheckersCommand.class);
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_SOUTH_EAST, DownRightCheckersCommand.class);
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_SOUTH_WEST, DownLeftCheckersCommand.class);
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_EAST, RightCheckersCommand.class);
        DynamicCommandFactory.registerCommand(DynamicCommandFactory.DIR_WEST, LeftCheckersCommand.class);
    }
}
