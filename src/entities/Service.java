package entities;

public class Service {
    private Integer id;
    private String serviceName;
    private int serviceTypeId;

    public Service() {
    }

    public Service(Integer id, String serviceName) {
        this.id = id;
        this.serviceName = serviceName;
    }

    public Service(Integer id, String serviceName, int serviceTypeId) {
        this.id = id;
        this.serviceName = serviceName;
        this.serviceTypeId = serviceTypeId;
    }

    public int getServiceTypeId() {
        return serviceTypeId;
    }

    public void setServiceTypeId(int serviceTypeId) {
        this.serviceTypeId = serviceTypeId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }
}
