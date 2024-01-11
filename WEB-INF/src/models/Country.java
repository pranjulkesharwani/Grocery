package models;

import java.util.ArrayList;
import java.sql.*;

public class Country {
    private Integer countryId;
    private String name;
    private Integer isdCode;

    public Country() {

    }

    public Country(Integer countryId) {
        this.countryId = countryId;
    }

    public Country(Integer countryId, String name) {
        this.countryId = countryId;
        this.name = name;
    }

    public Country(Integer countryId, String name, Integer isdCode) {
        this.countryId = countryId;
        this.name = name;
        this.isdCode = isdCode;
    }

    // ################################### Other Methods
    // #######################################

    public static ArrayList<Country> collectAllCountries() {

        ArrayList<Country> countries = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "select * from countries";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                countries.add(new Country(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            }

            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return countries;
    }

    // ################################### Getters- Setters
    // #######################################
    public Integer getCountryId() {
        return countryId;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getIsdCode() {
        return isdCode;
    }

    public void setIsdCode(Integer isdCode) {
        this.isdCode = isdCode;
    }
}
