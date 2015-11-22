/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns;

import designpatterns.sample3.Authenticator;
import designpatterns.sample3.IAuthMechanism;
import designpatterns.sample3.IUser;
import designpatterns.sample3.mechanism.facebook.FacebookAuthMechanism;
import designpatterns.sample3.mechanism.md5.Md5AuthMechanism;
import designpatterns.sample4.AuthMechanismFactory;
import designpatterns.sample4.DynamicAuthMechanismFactory;

/**
 *
 * @author sergeiw
 */
public class AbstractFactory {
    
    public static void main(String[] args) {
        
        // Abstract Factory
        IAuthMechanism md5 = 
                AuthMechanismFactory.createAuthMechanism(AuthMechanismFactory.MECHANISM_MD5);
        md5.setParam("userID", "sergeiw");
        md5.setParam("password", "javaday");
        Authenticator a1 = new Authenticator(md5);
        IUser md5User = a1.login();
        if (md5User != null) {
            System.out.println("MD5 Auth OK");
        }
        
        
        // Dynamic Abstract Factory
        DynamicAuthMechanismFactory.registerAuthMechanism(
                DynamicAuthMechanismFactory.MECHANISM_MD5, Md5AuthMechanism.class);
        DynamicAuthMechanismFactory.registerAuthMechanism(
                DynamicAuthMechanismFactory.MECHANISM_FACEBOOK, FacebookAuthMechanism.class);
        
        IAuthMechanism fb = 
                AuthMechanismFactory.createAuthMechanism(AuthMechanismFactory.MECHANISM_FACEBOOK);
        fb.setParam("userID", "123567898");
        fb.setParam("oauthToken", "ASDFAF3ksjkl2453jadfajkda");
        Authenticator a2 = new Authenticator(fb);
        IUser fbUser = a2.login();
        if (fbUser != null) {
            System.out.println("FB Auth OK");
        }
        
    }
    
}
