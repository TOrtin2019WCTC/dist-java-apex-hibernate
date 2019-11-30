package hibernate.dao;

import hibernate.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<User> getUsers() {
        Session session = sessionFactory.getCurrentSession();

        List<User> list = session.createQuery("from User", User.class).getResultList();

        return list;

    }
    @Override
    public void saveUser(User aUser) {
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(aUser);

    }

    @Override
    public User getUser(int userId) {
        Session session = sessionFactory.getCurrentSession();

        return session.get(User.class, userId);
    }

    @Override
    public void deleteUser(int userId) {
        Session session = sessionFactory.getCurrentSession();

        Query query = session.createQuery("delete from User where id = :userToDeleteId");

        query.setParameter("userToDeleteId", userId);

        query.executeUpdate();
    }

    @Override
    public List<User> getUsersByName(String theSearchTerm) {
        Session session = sessionFactory.getCurrentSession();

        Query<User> query = session.createQuery("from User where lower(lastName) like :searchTerm");

        theSearchTerm = "%" + theSearchTerm.toLowerCase() + "%";

        query.setParameter("searchTerm" , theSearchTerm);

        return query.getResultList();
    }
}
