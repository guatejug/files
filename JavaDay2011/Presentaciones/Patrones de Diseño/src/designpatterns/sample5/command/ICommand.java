package designpatterns.sample5.command;

import designpatterns.sample5.Board;
import designpatterns.sample5.IUserState;

/**
 *
 * @author sergeiw
 */
public interface ICommand {

    void execute(Board board, IUserState userState);
}
