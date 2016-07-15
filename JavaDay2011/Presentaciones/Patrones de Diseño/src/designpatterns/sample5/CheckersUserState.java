/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5;

/**
 *
 * @author sergeiw
 */
public class CheckersUserState implements IUserState {

    Point lastPoint = null;
    Point currentPoint = null;
    ICheckersPiece piece = null;

    public CheckersUserState(Point point) {
        this.currentPoint = point;
        this.piece = new DefaultCheckerPiece(true);
    }
    
    @Override
    public int getStepFactor() {
        return 1;
    }
    
    @Override
    public void updateState(Point destinationPoint) {
        this.lastPoint = currentPoint;
        this.currentPoint = destinationPoint;
    }

    @Override
    public Point getPoint() {
        return currentPoint;
    }

    /**
     * @return the piece
     */
    public ICheckersPiece getPiece() {
        return piece;
    }

    /**
     * @param piece the piece to set
     */
    public void setPiece(ICheckersPiece piece) {
        this.piece = piece;
    }

    
    
    
}
