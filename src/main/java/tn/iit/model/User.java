package tn.iit.model;
public class User {
    private String nom;
    private String password;
    private String type;
    private boolean activated;

    // Constructor
    public User(String nom, String password, String type, boolean activated) {
        this.nom = nom;
        this.password = password;
        this.type = type;
        this.activated = activated;
    }

    // Getters and setters
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean isActivated() {
        return activated;
    }

    public void setActivated(boolean activated) {
        this.activated = activated;
    }
}
