/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample3.mechanism.facebook;

import designpatterns.sample3.IUser;

/**
 *
 * @author sergeiw
 */
public class FacebookUser implements IUser {

    @Override
    public String getUserID() {
        return "facebookUserId";
    }

    @Override
    public String getName() {
        return "facebookName";
    }
    
    public String getOauthToken() {
        return "oauthToken";
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
