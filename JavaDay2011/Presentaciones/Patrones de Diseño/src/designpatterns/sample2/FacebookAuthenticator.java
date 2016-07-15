package designpatterns.sample2;

/**
 *
 * @author sergeiw
 */
public class FacebookAuthenticator extends Authenticator {
    
    public User login(String userId, String oauthToken) {
        
        if (doFacebookAuthentication()) {        
            User user = findUser(userId);

            return user;
        }
        return null;
    }
    
    private boolean doFacebookAuthentication() {
        // facebook connect authentication
        return true;
    }
    
    private User findUser(String userId) {
        // Busca en BD
        return new User();
    }
    
}
