/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5;

/**
 *
 * @author sergeiw
 */
public class DefaultCheckerPiece implements ICheckersPiece {

    boolean isWhite;
    String s;

    public DefaultCheckerPiece(boolean isWhite) {
        s = isWhite ? " o " : " x ";
        this.isWhite = isWhite;
    }

    @Override
    public String toString() {
        return s;
    }

    @Override
    public String render(IUserState userState) {
        return s;
    }
    
    
    
    
    
}
