package designpatterns;

import designpatterns.sample2.FacebookAuthenticator;
import designpatterns.sample2.User;
import designpatterns.sample2.Md5Authenticator;

/**
 *
 * @author sergeiw
 */
public class FacebookConnect {
    
    public static void main(String[] args) {
        
        // MD5
        Md5Authenticator a1 = new Md5Authenticator();
        User user = a1.login("sergeiw", "javaday");
        if (user != null) {
            System.out.println("Auth OK");
        }
        
        // Facebook Connect
        FacebookAuthenticator a2 = new FacebookAuthenticator();
        User user2 = a2.login("01256879941231", "abcc46820eff32990298937adc");
        if (user2 != null) {
            System.out.println("Auth OK");
        }
        
    }
}
