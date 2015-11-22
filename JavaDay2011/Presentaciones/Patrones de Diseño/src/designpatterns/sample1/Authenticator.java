package designpatterns.sample1;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 
 * @author sergeiw
 */
public class Authenticator {

    public User login(String userId, String password) {
        
        String encryptedPwd = encryptPassword(password);
        
        User user = findUser(userId, encryptedPwd);
        
        return user;
    }
    
    private String encryptPassword(String pwd) {
        try {
            MessageDigest lDigest = MessageDigest.getInstance("MD5");
            lDigest.update(pwd.getBytes());
            BigInteger lHashInt = new BigInteger(1, lDigest.digest());
            return String.format("%1$032X", lHashInt);
        } catch(NoSuchAlgorithmException lException) {
            throw new RuntimeException(lException);
        }        
    }
    
    private User findUser(String userId, String encryptedPwd) {
        // Busca en BD
        return new User();
    }
    
}
