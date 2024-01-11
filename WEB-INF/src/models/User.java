package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.jasypt.util.password.StrongPasswordEncryptor;

// import models.Address;

public class User {

    static StrongPasswordEncryptor spe = new StrongPasswordEncryptor();

    // ######################### Properties ###############################
    private Integer userId;
    private String name;
    private String email;
    private String password;
    private String phone;
    private String myPic;
    private Address address;
    private String otp;
    private Status status;
    private UserType userType;
    private Country country;

    // ################################ Constructor#############################
    public User() {

    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public User(String name, String email, String password, String phone) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public User(String name, String email, String password, String phone, Country country) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.country = country;
    }

    public User(String name, String email, String password, String phone, Country country, Address address) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.country = country;
        this.address = address;
    }

    // ##################################### Other Methods####################
    public void savePic(String fileName) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "update users set my_pic=? where user_id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email + "/" + fileName);
            ps.setInt(2, userId);

            int val = ps.executeUpdate();

            if (val == 1) {
                this.myPic = email + "/" + fileName;
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public int signinUser() {
        int statusId = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");
            String query = "select u.user_id, u.name, password, phone, my_pic, s.status_id, s.name, "
                    +
                    "user_type_id, c.country_id, c.name from users as u inner join countries as c inner join status as s "
                    +
                    "where email=? and u.country_id = c.country_id and u.status_id = s.status_id";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                statusId = rs.getInt("status_id");
                System.out.println("++++++++++++++++++++++++++" + statusId);
                if (statusId == 1) {
                    if (spe.checkPassword(password, rs.getString("password"))) {
                        password = null;
                        userId = rs.getInt("user_id");
                        name = rs.getString("name");
                        phone = rs.getString("phone");
                        myPic = rs.getString("my_pic");
                        // address = new Address(rs.getInt("address_id"));
                        status = new Status(rs.getInt(6), rs.getString(7));
                        userType = new UserType(rs.getInt("user_type_id"));
                        country = new Country(rs.getInt("country_id"), rs.getString(10));
                    } else {
                        statusId = -1;
                    }
                }
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("++++++++++++++++++++++++++++++++" + statusId);
        return statusId;
    }

    public static boolean checkEmailExists(String email) {
        boolean flag = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "select user_id from users where email=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                flag = true;
            }
            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return flag;
    }

    // #############################Part 1 ####################################

    // public boolean signupUser() {
    // boolean flag = false;

    // try {
    // Class.forName("com.mysql.cj.jdbc.Driver");

    // Connection con =
    // DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

    // String query = "insert into user (name, email, password, phone, country_id)
    // value (?, ?, ?, ?, ?)";

    // PreparedStatement ps = con.prepareStatement(query);

    // ps.setString(1, name);
    // ps.setString(2, email);
    // ps.setString(3, spe.encryptPassword(password));
    // ps.setString(4, phone);
    // ps.setInt(5, country.getCountryId());

    // int val = ps.executeUpdate();

    // if (val == 1) {
    // flag = true;
    // }

    // con.close();
    // } catch (ClassNotFoundException | SQLException e) {
    // e.printStackTrace();
    // }

    // return flag;
    // }

    // ################################# Part 2####################################

    public boolean signupUser() {
        boolean flag = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "insert into users (name, email, password, phone, country_id) value (?,?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, spe.encryptPassword(password));
            ps.setString(4, phone);
            ps.setInt(5, country.getCountryId());
            // ps.setString(6, address.getAddressLine1());

            int val = ps.executeUpdate();

            if (val == 1) {
                flag = true;
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }
    // ############################## Getters-Setters########################

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMyPic() {
        return myPic;
    }

    public void setMyPic(String myPic) {
        this.myPic = myPic;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }
}
