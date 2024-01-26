package models;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.jasypt.util.password.StrongPasswordEncryptor;

import models.User;

public class Manufacturer extends User {

    static StrongPasswordEncryptor spe = new StrongPasswordEncryptor();

    // ############################# Properties #############################
    private Integer manufacturerId;
    private User user;
    private String description;
    private String website;
    private String regNum;

    // ######################### Constructor #############################
    public Manufacturer() {

    }

    // public Manufacturer(String name, String password) {
    // super(name, password);
    // }

    public Manufacturer(String email, String password) {
        super(email, password);
    }
    // public Manufacturer(String name, String email, String password, String phone,
    // Country country, Address address) {
    // super(name, email, password, phone, country, address);
    // }

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

    public int SignInManufacturer() {
        int statusId = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");
            System.out.println("++++++++++++++++++++++++++++++++++++++++++In method start");

            String query = "select m.manufacturer_Id, u.name, u.password, status_id from manufacturers as m inner join users as u where email=?";
            PreparedStatement ps = con.prepareStatement(query);
            System.out.println("++++++++++++++++++++++++++++++++++++++++++ After ps.execute");

            ps.setString(1, user.getEmail());
            ResultSet rs = ps.executeQuery();

            System.out.println(ps);
            if (rs.next()) {
                statusId = rs.getInt("status_id");
                if (statusId == 2) {
                    if (spe.checkPassword(user.getPassword(), rs.getString("password"))) {
                        manufacturerId = rs.getInt("manufacturer_id");
                    }
                }
            } else {
                statusId = -1;
            }
            con.close();
            System.out.println(statusId + "++++++++++++++++++++++++");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return statusId;
    }

    public boolean saveManufacturer() {
        System.out.println("method chal gayi");
        boolean flag = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "insert into manufacturers (user_id, description, website, reg_num) value (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, getUserId());
            ps.setString(2, description);
            ps.setString(3, website);
            ps.setString(4, regNum);

            int val = ps.executeUpdate();

            System.out.println("value dekh lo bhai " + val);
            if (val == 1) {
                flag = true;
            }
            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("Flag ki value bhi dekhlo bhai " + flag);
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
