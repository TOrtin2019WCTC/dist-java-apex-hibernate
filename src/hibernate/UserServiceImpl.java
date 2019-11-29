package hibernate;

import hibernate.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;

    @Override
    @Transactional
    public List<User> getUsers() {
        return userDAO.getUsers();
    }

    @Override
    @Transactional
    public void saveUser(User aUser, String applicationPath) {
        userDAO.saveUser(aUser);
    }

    @Override
    @Transactional
    public User getUser(int userId) {
        return userDAO.getUser(userId);
    }

    @Override
    @Transactional
    public void deleteUser(int userId) {
        userDAO.deleteUser(userId);
    }

    @Override
    @Transactional
    public List<User> getUsersByName(String theSearchTerm) {
        return userDAO.getUsersByName(theSearchTerm);
    }
}
