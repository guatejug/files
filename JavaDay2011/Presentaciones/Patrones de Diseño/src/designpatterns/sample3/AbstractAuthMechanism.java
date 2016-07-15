package designpatterns.sample3;

import java.util.HashMap;

/**
 *
 * @author sergeiw
 */
public abstract class AbstractAuthMechanism implements IAuthMechanism {

    protected HashMap<String, String> params = new HashMap<String, String>();
    
    @Override
    public void setParam(String name, String value) {
        params.put(name, value);
    }
    
    protected IUser getUser() {
        IUser user = createUser();
        user.setUserID(params.get("userID"));
        return user;
    }
    
    // --------------------------------------------------
    // Principios de OO
    // Dependa de abstracciones y no de clases concretas
    // --------------------------------------------------
    public abstract IUser createUser();
    
}
