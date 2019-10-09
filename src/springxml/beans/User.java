package springxml.beans;

import springxml.services.RecommendationService;

public class User {
    private int userId;
    private String firstName;
    private String lastName;
    private String email;
    private RecommendationService service;

    public User(){

    }

    public User(RecommendationService service){
        this.service = service;
    }

    public void setRecommendationService(RecommendationService service){
        this.service = service;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }


    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRecommendation(){
        return service.getRecommendation();
    }
}