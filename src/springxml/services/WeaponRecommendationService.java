package springxml.services;

public class WeaponRecommendationService implements RecommendationService{


    @Override
    public String getRecommendation() {
        return "Recommended Weapon: Havoc rifle";
    }
}
