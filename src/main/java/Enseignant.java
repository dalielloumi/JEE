

public class Enseignant<Part> {
    private String listeGroupe;
    private String listeMatiere;
    private String dateRecuperation;
    private Part documentAttache;

    public Enseignant(String listeGroupe, String listeMatiere, String dateRecuperation, Part documentAttache) {
        this.listeGroupe = listeGroupe;
        this.listeMatiere = listeMatiere;
        this.dateRecuperation = dateRecuperation;
        this.documentAttache = documentAttache;
    }

    public String getListeGroupe() {
        return listeGroupe;
    }

    public void setListeGroupe(String listeGroupe) {
        this.listeGroupe = listeGroupe;
    }

    public String getListeMatiere() {
        return listeMatiere;
    }

    public void setListeMatiere(String listeMatiere) {
        this.listeMatiere = listeMatiere;
    }

    public String getDateRecuperation() {
        return dateRecuperation;
    }

    public void setDateRecuperation(String dateRecuperation) {
        this.dateRecuperation = dateRecuperation;
    }

    public Part getDocumentAttache() {
        return documentAttache;
    }

    public void setDocumentAttache(Part documentAttache) {
        this.documentAttache = documentAttache;
    }
}
