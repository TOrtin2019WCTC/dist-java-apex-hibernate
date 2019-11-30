package hibernate.dao;

import hibernate.entity.User;

import java.util.List;

public interface UserDAO {
    List<User> getUsers();

    void saveUser(User aUser);

    User getUser(int userId);

    void deleteUser(int userId);

    List<User> getUsersByName(String theSearchTerm);



}
