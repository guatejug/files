package designpatterns.sample4;

import designpatterns.sample3.IAuthMechanism;
import java.util.HashMap;

/**
 *
 * @author sergeiw
 */
public class DynamicAuthMechanismFactory {
   
    public static final String MECHANISM_MD5 = "md5";
    public static final String MECHANISM_FACEBOOK = "facebook";
    
    private static HashMap<String, Class<? extends IAuthMechanism>> registeredMechanisms = new HashMap<String, Class<? extends IAuthMechanism>>();

    
    public static void registerAuthMechanism(String key, Class<? extends IAuthMechanism> mechanism) {
        registeredMechanisms.put(key, mechanism);
    }
    
    public static IAuthMechanism createAuthMechanism(String key) throws InstantiationException, IllegalAccessException {
        IAuthMechanism mechanism = null;
        
        if (registeredMechanisms.containsKey(key)) {
            mechanism = registeredMechanisms.get(key).newInstance();
        }
        
        if (mechanism != null) {
            mechanism = new AuditableAuthMechanism(mechanism);
        }
        return mechanism;        
    }
    
}
