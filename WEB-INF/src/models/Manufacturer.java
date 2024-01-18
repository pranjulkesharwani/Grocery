package models;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Manufacturer extends User {
    // ############################# Properties #############################
    private Integer manufacturerId;
    private User user;
    private String description;
    private String website;
    private String regNum;

    // ######################### Constructor #############################
    public Manufacturer() {

    }

    public Manufacturer(String name, String email, String password, String phone, Country country, Address address,
            String description,
            String website, String regNum) {
        super(name, email, password, phone, country, address);
        this.description = description;
        this.website = website;
        this.regNum = regNum;

    }

    public Manufacturer(Integer manufacturerId, User user, String description, String website, String regNum) {
        this.manufacturerId = manufacturerId;
        this.user = user;
        this.description = description;
        this.website = website;
        this.regNum = regNum;
    }

    // ########################## Getter-Setter #########################

    public boolean saveManufacturer() {
        boolean flag = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "insert into manufacturers (user_id, description, website, reg_num) value (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, user.getUserId());
            ps.setString(2, description);
            ps.setString(3, website);
            ps.setString(4, regNum);

            int val = ps.executeUpdate();

            if (val == 1) {
                flag = true;
            }
            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public Integer getManufacturerId() {
        return manufacturerId;
    }

    public void setManufacturerId(Integer manufacturerId) {
        this.manufacturerId = manufacturerId;
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
