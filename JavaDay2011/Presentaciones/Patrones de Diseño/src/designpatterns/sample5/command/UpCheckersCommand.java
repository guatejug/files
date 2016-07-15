/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5.command;

import designpatterns.sample5.IUserState;
import designpatterns.sample5.Point;

/**
 *
 * @author sergeiw
 */
public class UpCheckersCommand extends AbstractCheckersCommand {

    @Override
    protected int getXdirection() {
        return 0;
    }

    @Override
    protected int getYdirection() {
        return -1;
    }

    
    
    
}
