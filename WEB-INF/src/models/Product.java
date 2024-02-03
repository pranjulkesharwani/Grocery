package models;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Product {
    private Integer productId;
    private Manufacturer manufacturer;
    private String name;
    private Integer price;
    private Integer discount;
    private Integer extra;
    private Unit unit;
    private Integer quantity;
    private Category category;
    private String description;

    public Product() {

    }

    public Product(Manufacturer manufacturer, String name, Integer price, Unit unit,
            Integer quantity, Category category, String description) {
        this.manufacturer = manufacturer;
        this.name = name;
        this.price = price;
        this.unit = unit;
        this.quantity = quantity;
        this.category = category;
        this.description = description;
    }

    // ################################### Methods ##############################

    public boolean savaProduct() {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grodb?user=root&password=1234");

            String query = "insert into products (manufacture_id, name, price, unit_id, quantity, category_id, description)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, manufacturer.getManufacturerId());
            ps.setString(2, name);
            ps.setInt(3, price);
            ps.setInt(4, unit.getUnitId());
            ps.setInt(5, quantity);
            ps.setInt(6, category.getCategoryId());
            ps.setString(7, description);

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

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Manufacturer getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(Manufacturer manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public Integer getExtra() {
        return extra;
    }

    public void setExtra(Integer extra) {
        this.extra = extra;
    }

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
