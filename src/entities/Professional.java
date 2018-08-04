package entities;

public class Professional {
    private Integer id;
    private String firstName;
    private String family;
    private String username;
    private String password;
    private int serviceId;
    private int cityId;
    private String businessName;
    private String address;
    private String phone;
    private String qualification;

    public Professional() {
    }

    public Professional(Integer id, String firstName, String family, String username, String password, int serviceId, int cityId, String businessName, String address, String phone, String qualification) {
        this.id = id;
        this.firstName = firstName;
        this.family = family;
        this.username = username;
        this.password = password;
        this.serviceId = serviceId;
        this.cityId = cityId;
        this.businessName = businessName;
        this.address = address;
        this.phone = phone;
        this.qualification = qualification;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFamily() {
        return family;
    }

    public void setFamily(String family) {
        this.family = family;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }
}
