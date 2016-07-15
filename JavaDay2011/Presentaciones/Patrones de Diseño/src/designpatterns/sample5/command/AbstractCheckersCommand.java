/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5.command;

import designpatterns.sample5.Board;
import designpatterns.sample5.IUserState;
import designpatterns.sample5.Point;

/**
 *
 * @author sergeiw
 */
public abstract class AbstractCheckersCommand implements ICommand {

    protected int newX;
    protected int newY;
    
    // --------------------------------------------------
    // Principios de OO
    // El algoritmo mismo debe asegurarse que todos su pasos sean ejecutados 
    // y no delegar esa responsabilidad
    // --------------------------------------------------
    @Override
    public final void execute(Board board, IUserState userState) {
        if (validateMove(board, userState)) {
            updateState(userState);            
        } else {
            printError();
        }
    }

    protected boolean validateMove(Board board, IUserState userState) {
        int x = userState.getPoint().getX();
        int y = userState.getPoint().getY();
        
        x = (char)((int)x + ( userState.getStepFactor() * this.getXdirection()));
        y = y + (userState.getStepFactor() * this.getYdirection());
        
        // check bounds
        if (x < 0 || x >= board.getSizeX()
            || y < 0 || y >= board.getSizeY()) {
            return Boolean.FALSE;
        }
        
        newX = x;
        newY = y;
        
        return Boolean.TRUE;
    }

    protected void updateState(IUserState userState) {        
        Point destinationPoint = new Point(newX, newY);        
        userState.updateState(destinationPoint);
    }
    
    protected void printError() {
        System.out.println("ERROR: Invalid Move!");
    }
    
    protected abstract int getXdirection();
    protected abstract int getYdirection();
    
    
    
}
