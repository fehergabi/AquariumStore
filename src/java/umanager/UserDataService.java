
package umanager;


import dbmanager.DatabaseManager;
import java.util.List;


public class UserDataService {
    private List<User> users=null;

    public UserDataService() {
        users = DatabaseManager.getInstance().getUsers();
    }

    public List<User> getUsers() {
        return users;
    }
    
    public User findUser(String uID){
        return users.stream().filter(u->u.getuID().equals(uID)).findFirst().get();
    }
}
