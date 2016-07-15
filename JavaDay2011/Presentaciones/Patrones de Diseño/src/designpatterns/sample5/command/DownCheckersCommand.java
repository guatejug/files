/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5.command;

/**
 *
 * @author sergeiw
 */
public class DownCheckersCommand extends AbstractCheckersCommand {

    @Override
    protected int getXdirection() {
        return 0;
    }

    @Override
    protected int getYdirection() {
        return 1;
    }

    
    
    
}
