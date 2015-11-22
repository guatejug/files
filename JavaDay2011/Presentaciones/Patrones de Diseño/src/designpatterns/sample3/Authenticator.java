package designpatterns.sample3;

/**
 *
 * @author sergeiw
 */
public class Authenticator {
    
    // --------------------------------------------------
    // Principios de OO
    // Programar contra interfaces, no implementaciones
    // --------------------------------------------------
    public Authenticator(IAuthMechanism mechanism) {
        this.mechanism = mechanism;
    }
    
    // --------------------------------------------------
    // Principios de OO
    // Favorecer composición contra herencia
    // --------------------------------------------------
    IAuthMechanism mechanism = null;
    
    public IUser login() {
        return this.mechanism.authenticate();
    }
    
    
    
}
