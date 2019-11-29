package hibernate;

import hibernate.entity.User;

import java.util.List;

public interface UserDAO {
    List<User> getUsers();

    void saveUser(User aUser);

    User getUser(int userId);

    void deleteDonut(int userId);

    List<User> getUserByName(String theSearchTerm);



}
