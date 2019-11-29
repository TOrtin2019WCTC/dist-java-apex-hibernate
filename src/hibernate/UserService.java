package hibernate;

import hibernate.entity.User;

import java.util.List;

public interface UserService {
    List<User> getUsers();

    void saveUser(User aUser, String applicationPath);

    User getUser(int userId);

    void deleteUser(int userId);

    List<User> getUsersByName(String theSearchTerm);
}
