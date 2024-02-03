package models;

import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Category {
    private Integer categoryId;
    private String name;

    public Category() {

    }

    public Category(Integer categoryId, String name) {
        this.categoryId = categoryId;
        this.name = name;
    }

    public static ArrayList<Category> collectAllCategory() {

        ArrayList<Category> categories = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "select * from categories;";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                categories.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return categories;

    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
