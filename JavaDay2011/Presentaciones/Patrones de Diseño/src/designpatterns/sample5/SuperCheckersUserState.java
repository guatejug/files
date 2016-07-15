package designpatterns.sample5;

/**
 *
 * @author sergeiw
 */
public class SuperCheckersUserState extends CheckersUserState {

    // --------------------------------------------------
    // Principios de OO
    // Interactuar sólo con interfaces conocidas
    // --------------------------------------------------
    public SuperCheckersUserState(Point point) {
        super(point);        
        this.piece = new ChessToCheckersPieceAdapter(new ChessPiece(true));
    }
    
    @Override
    public int getStepFactor() {
        return 2;
    }
        
}
