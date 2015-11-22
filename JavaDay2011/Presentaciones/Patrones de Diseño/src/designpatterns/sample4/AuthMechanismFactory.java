package designpatterns.sample4;

import designpatterns.sample3.IAuthMechanism;
import designpatterns.sample3.mechanism.facebook.FacebookAuthMechanism;
import designpatterns.sample3.mechanism.md5.Md5AuthMechanism;

/**
 *
 * @author sergeiw
 */

public class AuthMechanismFactory {
   
    public static final String MECHANISM_MD5 = "md5";
    public static final String MECHANISM_FACEBOOK = "facebook";

    // --------------------------------------------------
    // Principios de OO
    // Identifique los aspectos de la aplicación que cambian y separelos de lo que no
    // --------------------------------------------------
    public static IAuthMechanism createAuthMechanism(String mechanism) {
        IAuthMechanism auth = null;
        if (mechanism.equals(MECHANISM_MD5)) {
            auth = new Md5AuthMechanism();
        } else if (mechanism.equals(MECHANISM_FACEBOOK)) {
            auth = new FacebookAuthMechanism();
        }
        
        if (auth != null) {
            auth = new AuditableAuthMechanism(auth);
        }
        return auth;        
    }
    
}
