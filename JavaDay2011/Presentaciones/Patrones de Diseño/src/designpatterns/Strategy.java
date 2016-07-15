package designpatterns;

import designpatterns.sample3.Authenticator;
import designpatterns.sample3.IAuthMechanism;
import designpatterns.sample3.IUser;
import designpatterns.sample3.mechanism.facebook.FacebookAuthMechanism;
import designpatterns.sample3.mechanism.md5.Md5AuthMechanism;

/**
 *
 * @author sergeiw
 */
public class Strategy {
    
    public static void main(String[] args) {
        
        // MD5 Authenticator
        IAuthMechanism md5 = new Md5AuthMechanism();
        md5.setParam("userId", "sergeiw");
        md5.setParam("password", "javaday");
        
        Authenticator a1 = new Authenticator(md5);
        IUser md5User = a1.login();
        if (md5User != null) {
            System.out.println("MD5 Auth OK");
        }
        
        
        // Facebook Authenticator
        IAuthMechanism fb = new FacebookAuthMechanism();
        fb.setParam("userId", "123567898");
        fb.setParam("oauthToken", "ASDFAF3ksjkl2453jadfajkda");
        
        Authenticator a2 = new Authenticator(fb);
        IUser fbUser = a2.login();
        if (fbUser != null) {
            System.out.println("FB Auth OK");
        }
        
    }
    
}
