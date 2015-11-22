package designpatterns.sample3.mechanism.md5;

import designpatterns.sample3.IUser;

/**
 *
 * @author sergeiw
 */
public class Md5User implements IUser {

    @Override
    public String getUserID() {
        return "userID";
    }

    @Override
    public String getName() {
        return "name";
    }

    @Override
    public void setUserID(String userID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void setName(String name) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
