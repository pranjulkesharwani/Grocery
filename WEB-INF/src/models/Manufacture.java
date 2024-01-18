package models;

import java.sql.DriverManager;

public class Manufacture {
    // ############################# Properties #############################
    private Integer manufactureId;
    private User user;
    private String description;
    private String website;
    private String regNum;

    // ######################### Constructor #############################
    public Manufacture() {

    }

    public static void saveData() {
        // DriverManager.getConnection("");
    }

    // ########################## Getter-Setter #########################
    public Integer getManufactureId() {
        return manufactureId;
    }

    public void setManufactureId(Integer manufactureId) {
        this.manufactureId = manufactureId;
    }

    public User getUser() {
        return user;
    }

    public void setUserId(User user) {
        this.user = user;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getRegNum() {
        return regNum;
    }

    public void setRegNum(String regNum) {
        this.regNum = regNum;
    }
}
