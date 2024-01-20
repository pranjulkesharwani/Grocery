package models;

public class Address {
    private Integer addressId;
    private User user;
    private String addressLine1;
    private String addressLine2;
    private Integer zipCode;
    private Area area;

    public Address() {

    }

    public Address(String addressLine1) {
        this.addressLine1 = addressLine1;

    }

    public Address(String addressLine1, String addressLine2) {
        this.addressLine1 = addressLine1;
        this.addressLine2 = addressLine2;
    }

    public Address(Integer addressId, User user) {
        this.addressId = addressId;
        this.user = user;
    }

    public Address(Integer addressId) {
        this.addressId = addressId;
    }

    public Address(Integer addressId, String addressLine1) {
        this.addressId = addressId;
        this.addressLine1 = addressLine1;
    }

    // public Address(String addressLine2) {
    // this.addressLine2 = addressLine2;
    // }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    public Integer getZipCode() {
        return zipCode;
    }

    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }
}
