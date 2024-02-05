package models;

import java.util.ArrayList;

import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Unit {
    private Integer unitId;
    private String gram;

    public Unit() {

    }

    public Unit(Integer unitId) {
        this.unitId = unitId;
    }

    public Unit(Integer unitId, String gram) {
        this.unitId = unitId;
        this.gram = gram;
    }

    public static ArrayList<Unit> collectAllUnit() {

        ArrayList<Unit> units = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "select * from units";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                units.add(new Unit(rs.getInt(1), rs.getString(2)));
            }
            con.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return units;
    }

    public Integer getUnitId() {
        return unitId;
    }

    public void setUnitId(Integer unitId) {
        this.unitId = unitId;
    }

    public String getGram() {
        return gram;
    }

    public void setType(String gram) {
        this.gram = gram;
    }
}
