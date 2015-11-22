package designpatterns.sample5;

/**
 *
 * @author sergeiw
 */
public class ChessToCheckersPieceAdapter implements ICheckersPiece {

    IChessPiece piece = null;

    public ChessToCheckersPieceAdapter(IChessPiece piece) {
        this.piece = piece;
    }
    
    
    @Override
    public String render(IUserState userState) {
        return this.piece.pintar(userState);
    }
    
}
