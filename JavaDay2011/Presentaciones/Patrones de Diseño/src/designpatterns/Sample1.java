package designpatterns;

import designpatterns.sample1.Authenticator;
import designpatterns.sample1.User;

/**
 *
 * @author sergeiw
 */
public class Sample1 {
    
    public static void main(String[] args) {
        
        Authenticator a1 = new Authenticator();
        User user = a1.login("sergeiw", "javaday");
        if (user != null) {
            System.out.println("Auth OK");
        }
        
    }
}
