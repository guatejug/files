package designpatterns.sample3.mechanism.md5;

import designpatterns.sample3.AbstractAuthMechanism;
import designpatterns.sample3.IUser;

/**
 *
 * @author sergeiw
 */
public class Md5AuthMechanism extends AbstractAuthMechanism {

    @Override
    public IUser authenticate() {
        String md5 = getEncryptedPwd(params.get("password"));
        Md5User user = findUser(params.get("userID"), md5);
        
        return user;     
    }

    @Override
    public IUser createUser() {
        return new Md5User();
    }
    
    
    
    private String getEncryptedPwd(String pwd) {
        // calculate md5
        return "encryptedPwd";
    }

    private Md5User findUser(String userID, String md5Pwd) {
        // Find by user and md5 password
        return (Md5User)getUser();
    }

    
    
    
    
    
}
