package Controller;

/**
 *
 * @author shawn
 */
import Utils.AuthenticationUtils;
import entity.UserGroups;
import entity.Users;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.UserTransaction;

public class UserEJB {

    @PersistenceContext
    EntityManager em;
    @Resource
    UserTransaction utx;

    public Users createUser(Users user) {
        try {
            user.setPassword(AuthenticationUtils.encodeSHA256(user.getPassword()));

            UserGroups group = new UserGroups();
            group.setUsername(user.getUsername());
            group.setGroupname("Users");

            utx.begin();

            em.persist(user);
            em.persist(group);

            utx.commit();
        } catch (Exception ex) {
            Logger.getLogger(UserEJB.class.getName()).log(Level.SEVERE, null, ex);
        }

        return user;
    }

}
