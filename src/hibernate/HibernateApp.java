package hibernate;

import hibernate.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateApp {
    private SessionFactory factory;
    private int userId;

    public HibernateApp(){
        factory = new Configuration().configure("hibernate.cfg.xml")
                .addAnnotatedClass(User.class)
                .buildSessionFactory();
    }

    public void close(){
        factory.close();
    }

    public static void main(String[] args) {
        HibernateApp app = new HibernateApp();

        // did this so it would automatically set a valid userId each time the methods are called
        int userId;
        System.out.println("DATABASE CRUD");

        try{
          userId = app.createUser();
          app.readUser(userId);
          app.updateUser(userId);
          app.deleteUser(userId);

        }finally{
            app.close();
        }
    }

    private int createUser(){
        Session session = factory.getCurrentSession();
        session.beginTransaction();

        User newUser = new User("Dexter", "Morgan", "DMorgan@mail.com");
        session.save(newUser);
        System.out.println(newUser);
        session.getTransaction().commit();

        return newUser.getId();
    }

    private void updateUser(int userId){
        Session session = factory.getCurrentSession();
        session.beginTransaction();

        User editUser = session.get(User.class, userId);
        if(editUser != null){
            editUser.setFirstName(editUser.getFirstName().toUpperCase());
            System.out.println(editUser);
            session.getTransaction().commit();
        }


    }

    private void readUser(int userId){
        Session session = factory.getCurrentSession();
        session.beginTransaction();

        User user = session.get(User.class, userId);
        if (user != null){
            System.out.println(user);
            session.getTransaction().commit();
        }else{
            System.out.println("that user does not exist");
        }
    }

    private void deleteUser(int userId){
        Session session = factory.getCurrentSession();
        session.beginTransaction();

        User deleteUser = session.get(User.class, userId);
        if(deleteUser != null){
            session.delete(deleteUser);
            session.getTransaction().commit();
        }else{
            System.out.println("User does not exist");
        }




    }



}
