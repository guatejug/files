/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5;

/**
 *
 * @author sergeiw
 */
public class ChessPiece implements IChessPiece {

    String s;

    public ChessPiece(boolean isWhite) {
        s = isWhite ? " A " : " a ";
    }
    
    public String pintar(IUserState userState) {
        return s;
    }
    
}
