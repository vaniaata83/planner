package entities;

public class City {
    private int id;
    private String name;
    private String postCode;


    public City() {
    }

    public City(int id, String name, String postCode) {
        this.id = id;
        this.name = name;
        this.postCode = postCode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }
}
