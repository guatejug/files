package designpatterns.sample2;

/**
 * 
 * @author sergeiw
 */
public abstract class Authenticator {

    // --------------------------------------------------
    // Principios de OO
    // Identifique lo que puede cambiar, y separelo
    // --------------------------------------------------
    public abstract User login(String userId, String password);
    
}
