/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5;

/**
 *
 * @author sergeiw
 */
public interface IUserState {

    public int getStepFactor();
    public void updateState(Point destinationPoint);
    
    public Point getPoint();
    public ICheckersPiece getPiece();
    public void setPiece(ICheckersPiece piece);
    
}
