package designpatterns.sample3;

/**
 *
 * @author sergeiw
 */
public interface IAuthMechanism {
    
    public void setParam(String name, String value);
    public IUser authenticate();    
    public IUser createUser();
}
