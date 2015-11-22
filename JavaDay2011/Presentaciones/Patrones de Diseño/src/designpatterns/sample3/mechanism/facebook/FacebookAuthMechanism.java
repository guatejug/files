package designpatterns.sample3.mechanism.facebook;

import designpatterns.sample3.AbstractAuthMechanism;
import designpatterns.sample3.IUser;

/**
 *
 * @author sergeiw
 */
public class FacebookAuthMechanism extends AbstractAuthMechanism {

    @Override
    public IUser authenticate() {
        String oauthToken = params.get("oauthToken");
        if (doFacebookAuthentication()) {
            FacebookUser user = new FacebookUser();
            return user;
        }
        return null;
    }

    @Override
    public IUser createUser() {
        return new FacebookUser();
    }

    private boolean doFacebookAuthentication() {
        // facebook authentication
        return true;
    }
    
    
}
