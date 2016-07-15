package designpatterns.sample4;

import designpatterns.sample3.IAuthMechanism;
import designpatterns.sample3.IUser;

/**
 *
 * @author sergeiw
 */
// --------------------------------------------------
// Principios de OO
// Las clases deben estar abiertas a la extensión, pero no a la modificación
// --------------------------------------------------
public class AuditableAuthMechanism implements IAuthMechanism {

    IAuthMechanism mechanism = null;
    
    public AuditableAuthMechanism(IAuthMechanism mechanism) {
        this.mechanism = mechanism;
    }
    
    @Override
    public IUser createUser() {
        printAudit("before create user");
        IUser user = this.mechanism.createUser();
        printAudit("after create user: " + user.getUserID());
        return user;
    }

    @Override
    public IUser authenticate() {
        printAudit("before authenticate");
        IUser user = this.mechanism.authenticate();
        printAudit("after authenticate user: " + user.getUserID());
        return user;
    }
    
    private void printAudit(String auditText) {
        System.out.println("Audit: " + auditText);
    }

    @Override
    public void setParam(String name, String value) {
        printAudit("before set param: " + name);
        this.mechanism.setParam(name, value);
        printAudit("after set param");        
    }
    
}
