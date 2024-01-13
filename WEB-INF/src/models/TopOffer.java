package models;

import java.util.ArrayList;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TopOffer {
    private Integer topOfferId;
    private String image;

    public TopOffer() {

    }

    public TopOffer(Integer topOfferId, String image) {
        this.topOfferId = topOfferId;
        this.image = image;
    }
    // ----------------------Top offer---------------------

    // public boolean saveTopOffer(String fileName) {
    // boolean flag = false;
    // try {
    // Class.forName("com.mysql.cj.jdbc.Driver");
    // Connection con =
    // DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

    // String query = "select * from top_offers where top_offer_id = ?";

    // PreparedStatement ps = con.prepareStatement(query);

    // ps.setString(1, fileName);
    // ps.setInt(2, topOfferId);

    // ResultSet rs = ps.executeQuery();

    // if (rs.next()) {
    // flag = true;
    // }
    // con.close();
    // } catch (SQLException | ClassNotFoundException e) {
    // e.printStackTrace();
    // }
    // return flag;
    // }

    // -------------------Top Offer End ----------------------

    // ---Start ----------------------insert on Top Offer----
    public static void saveOffer(ArrayList<String> imagePaths) {

        // "C:\Tomcat 9.0\webapps\gro_13\static\images\top1.webp"
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "insert into top_offers (image) value (?)";

            PreparedStatement ps = con.prepareStatement(query);

            for (String imagePath : imagePaths) {
                ps.setString(1, imagePath);
                ps.executeUpdate();
            }

            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    // --End -----------------------insert on Top Offer----

    public void setTopOfferId(Integer topOfferId) {
        this.topOfferId = topOfferId;
    }

    public Integer getTopOfferId() {
        return topOfferId;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage() {
        return image;
    }
}
